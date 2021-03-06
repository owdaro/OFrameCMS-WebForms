﻿using OWDARO.Util;
using System;
using System.IO;
using System.Net;
using System.Text;

namespace OWDARO.Helpers
{
    public static class FtpHelper
    {
        private const string FTPProtocol = "ftp://";

        public static void Delete(string filePath, string fileName, string ftpUserId, string ftpPassword, string ftpServerIP)
        {
            try
            {
                string uri = string.Format("{0}{1}/{2}", FTPProtocol, ftpServerIP, Path.Combine(filePath, fileName));

                FtpWebRequest reqFtp = (FtpWebRequest)FtpWebRequest.Create(new Uri(uri));

                reqFtp.Credentials = new NetworkCredential(ftpUserId, ftpPassword);
                reqFtp.KeepAlive = false;
                reqFtp.Method = WebRequestMethods.Ftp.DeleteFile;

                FtpWebResponse response = (FtpWebResponse)reqFtp.GetResponse();
                Stream datastream = response.GetResponseStream();
                StreamReader sr = new StreamReader(datastream);
                sr.Close();
                datastream.Close();
                response.Close();
            }
            catch (Exception ex)
            {
                ErrorLogger.LogError(ex);
            }
        }

        public static void Download(string downloadFilePath, string ftpFilePath, string fileName, string newFileName, string ftpUserId, string ftpPassword, string ftpServerIP)
        {
            FtpWebRequest reqFtp;

            try
            {
                FileStream outputStream = new FileStream(Path.Combine(downloadFilePath, newFileName), FileMode.Create);

                reqFtp = (FtpWebRequest)FtpWebRequest.Create(new Uri(String.Format("{0}{1}/{2}", FTPProtocol, ftpServerIP, Path.Combine(ftpFilePath, fileName))));
                reqFtp.Method = WebRequestMethods.Ftp.DownloadFile;
                reqFtp.UseBinary = true;
                reqFtp.Credentials = new NetworkCredential(ftpUserId, ftpPassword);
                FtpWebResponse response = (FtpWebResponse)reqFtp.GetResponse();
                Stream ftpStream = response.GetResponseStream();
                const int bufferSize = 2048;
                int readCount;
                byte[] buffer = new byte[bufferSize];

                readCount = ftpStream.Read(buffer, 0, bufferSize);
                while (readCount > 0)
                {
                    outputStream.Write(buffer, 0, readCount);
                    readCount = ftpStream.Read(buffer, 0, bufferSize);
                }

                ftpStream.Close();
                outputStream.Close();
                response.Close();
            }
            catch (Exception ex)
            {
                ErrorLogger.LogError(ex);
            }
        }

        public static string[] GetFileList(string path, string ftpUserId, string ftpPassword, string ftpServerIP)
        {
            string[] downloadFiles;
            StringBuilder result = new StringBuilder();
            FtpWebRequest reqFtp;
            try
            {
                reqFtp = (FtpWebRequest)FtpWebRequest.Create(new Uri(String.Format("{0}{1}/{2}", FTPProtocol, ftpServerIP, path)));
                reqFtp.UseBinary = true;
                reqFtp.Credentials = new NetworkCredential(ftpUserId, ftpPassword);
                reqFtp.Method = WebRequestMethods.Ftp.ListDirectory;
                WebResponse response = reqFtp.GetResponse();
                StreamReader reader = new StreamReader(response.GetResponseStream());

                string line = reader.ReadLine();
                while (line != null)
                {
                    result.Append(line);
                    result.Append("\n");
                    line = reader.ReadLine();
                }
                result.Remove(result.ToString().LastIndexOf('\n'), 1);
                reader.Close();
                response.Close();

                return result.ToString().Split('\n');
            }
            catch (Exception ex)
            {
                ErrorLogger.LogError(ex);
                downloadFiles = null;
                return downloadFiles;
            }
        }

        public static string[] GetFilesDetailList(string path, string ftpUserId, string ftpPassword, string ftpServerIP)
        {
            string[] downloadFiles;
            try
            {
                StringBuilder result = new StringBuilder();
                FtpWebRequest ftp = (FtpWebRequest)FtpWebRequest.Create(new Uri(String.Format("{0}{1}/{2}", FTPProtocol, ftpServerIP, path)));
                ftp.Credentials = new NetworkCredential(ftpUserId, ftpPassword);
                ftp.Method = WebRequestMethods.Ftp.ListDirectoryDetails;
                WebResponse response = ftp.GetResponse();
                StreamReader reader = new StreamReader(response.GetResponseStream());
                string line = reader.ReadLine();
                while (line != null)
                {
                    result.Append(line);
                    result.Append("\n");
                    line = reader.ReadLine();
                }

                result.Remove(result.ToString().LastIndexOf("\n"), 1);
                reader.Close();
                response.Close();
                return result.ToString().Split('\n');
            }
            catch (Exception ex)
            {
                ErrorLogger.LogError(ex);
                downloadFiles = null;
                return downloadFiles;
            }
        }

        public static long GetFileSize(string filePath, string filename, string ftpUserId, string ftpPassword, string ftpServerIP)
        {
            FtpWebRequest reqFtp;
            long fileSize = 0;
            try
            {
                reqFtp = (FtpWebRequest)FtpWebRequest.Create(new Uri(String.Format("{0}{1}/{2}", FTPProtocol, ftpServerIP, Path.Combine(filePath, filename))));
                reqFtp.Method = WebRequestMethods.Ftp.GetFileSize;
                reqFtp.UseBinary = true;
                reqFtp.Credentials = new NetworkCredential(ftpUserId, ftpPassword);
                FtpWebResponse response = (FtpWebResponse)reqFtp.GetResponse();
                Stream ftpStream = response.GetResponseStream();
                fileSize = response.ContentLength;

                ftpStream.Close();
                response.Close();
            }
            catch (Exception ex)
            {
                ErrorLogger.LogError(ex);
            }

            return fileSize;
        }

        public static bool IfDirectoryExists(string path, string dirName, string ftpUserId, string ftpPassword, string ftpServerIP)
        {
            dirName += "/";
            bool exists = false;

            try
            {
                FtpWebRequest request = (FtpWebRequest)WebRequest.Create(new Uri(String.Format("{0}{1}/{2}", FTPProtocol, ftpServerIP, Path.Combine(path, dirName))));
                request.Method = WebRequestMethods.Ftp.ListDirectory;
                request.Credentials = new NetworkCredential(ftpUserId, ftpPassword);

                using (FtpWebResponse response = (FtpWebResponse)request.GetResponse())
                {
                    exists = true;
                }
            }
            catch (WebException ex)
            {
                ErrorLogger.LogError(ex);

                if (ex.Response != null)
                {
                    FtpWebResponse response = (FtpWebResponse)ex.Response;

                    if (response.StatusCode == FtpStatusCode.ActionNotTakenFileUnavailable)
                    {
                        exists = false;
                    }
                }
            }

            return exists;
        }

        public static bool InitializeRemotePath(string path, string loginName, string password, string host)
        {
            bool initialized = true;

            string[] directories = path.Split(new char[] { '\\', '/' }, StringSplitOptions.RemoveEmptyEntries);

            string pathInsideWhichToCheck = string.Empty;

            for (int index = 0; index < directories.Length; index++)
            {
                if (!IfDirectoryExists(pathInsideWhichToCheck, directories[index], loginName, password, host))
                {
                    if (!MakeDir(pathInsideWhichToCheck, directories[index], loginName, password, host))
                    {
                        initialized = false;
                        break;
                    }
                }

                pathInsideWhichToCheck = GetPathTillIndex(index, directories);
            }

            return initialized;
        }

        public static bool MakeDir(string path, string dirName, string ftpUserId, string ftpPassword, string ftpServerIP)
        {
            bool success = false;

            FtpWebRequest reqFtp;
            try
            {
                reqFtp = (FtpWebRequest)FtpWebRequest.Create(new Uri(String.Format("{0}{1}/{2}", FTPProtocol, ftpServerIP, Path.Combine(path, dirName))));
                reqFtp.Method = WebRequestMethods.Ftp.MakeDirectory;
                reqFtp.UseBinary = true;
                reqFtp.Credentials = new NetworkCredential(ftpUserId, ftpPassword);
                FtpWebResponse response = (FtpWebResponse)reqFtp.GetResponse();
                Stream ftpStream = response.GetResponseStream();

                ftpStream.Close();
                response.Close();

                success = true;
            }
            catch (Exception ex)
            {
                success = false;
                ErrorLogger.LogError(ex);
            }

            return success;
        }

        public static void Rename(string filePath, string currentFilename, string newFilename, string ftpUserId, string ftpPassword, string ftpServerIP)
        {
            FtpWebRequest reqFtp;
            try
            {
                reqFtp = (FtpWebRequest)FtpWebRequest.Create(new Uri(String.Format("{0}{1}/{2}", FTPProtocol, ftpServerIP, Path.Combine(filePath, currentFilename))));
                reqFtp.Method = WebRequestMethods.Ftp.Rename;
                reqFtp.RenameTo = newFilename;
                reqFtp.UseBinary = true;
                reqFtp.Credentials = new NetworkCredential(ftpUserId, ftpPassword);
                FtpWebResponse response = (FtpWebResponse)reqFtp.GetResponse();
                Stream ftpStream = response.GetResponseStream();

                ftpStream.Close();
                response.Close();
            }
            catch (Exception ex)
            {
                ErrorLogger.LogError(ex);
            }
        }

        public static bool SendFileToRemoteServer(string path, string mappedFilePath, string loginName, string password, string host)
        {
            bool success = false;

            if (InitializeRemotePath(path, loginName, password, host))
            {
                success = Upload(path, mappedFilePath, loginName, password, host);
            }

            return success;
        }

        public static bool Upload(string filePath, string filename, string ftpUserId, string ftpPassword, string ftpServerIP)
        {
            bool success = false;

            FileInfo fileInf = new FileInfo(filename);

            string uri = String.Format("{0}{1}/{1}", FTPProtocol, ftpServerIP, Path.Combine(filePath, fileInf.Name));

            FtpWebRequest reqFtp = (FtpWebRequest)FtpWebRequest.Create(new Uri(uri));

            reqFtp.Credentials = new NetworkCredential(ftpUserId, ftpPassword);

            reqFtp.KeepAlive = false;

            reqFtp.Method = WebRequestMethods.Ftp.UploadFile;

            reqFtp.UseBinary = true;

            reqFtp.ContentLength = fileInf.Length;

            const int buffLength = 2048;
            byte[] buff = new byte[buffLength];
            int contentLen;

            FileStream fs = fileInf.OpenRead();

            try
            {
                Stream strm = reqFtp.GetRequestStream();
                contentLen = fs.Read(buff, 0, buffLength);

                while (contentLen != 0)
                {
                    strm.Write(buff, 0, contentLen);
                    contentLen = fs.Read(buff, 0, buffLength);
                }

                strm.Close();
                fs.Close();

                success = true;
            }
            catch (Exception ex)
            {
                ErrorLogger.LogError(ex);
                success = false;
            }

            return success;
        }

        private static string GetPathTillIndex(int tillIndex, string[] directories)
        {
            string stringTillIndex = string.Empty;

            for (int index = 0; index < tillIndex + 1; index++)
            {
                stringTillIndex = String.Format("{0}{1}/", stringTillIndex, directories[index]);
            }

            return stringTillIndex;
        }
    }
}