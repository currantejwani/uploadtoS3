# uploadtoS3

This project aims to create a Bash-based Command-Line Interface (CLI) tool for efficiently uploading files to AWS S3 cloud storage. Designed for simplicity and ease of use, it allows users to quickly transfer files to their AWS S3 buckets. While this demonstration is focused on AWS S3, the underlying methods can be adapted for other cloud storage services as well. This project is inspired by the [LearnToCloud.guide](https://learntocloud.guide/).


## Prerequisites
- Basic understanding of Linux commands.
- Familiarity with Bash scripting. For beginners, refer to my previous article.
- Knowledge of a text editor (Nano, Vi, Vim, etc.). This guide uses Vim.
- A terminal running Bash.
- Basic understanding of cloud storage services, e.g., AWS S3.


Before using this script, ensure you have the following:

+ [AWS CLI installed and configured with your AWS credentials.](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html)

## Installation

1. Clone this repository or download the script file.
2. Ensure the script is executable:
    ```bash
    chmod +x uploadtoaws.sh
    ```

## Usage

To use the CLI tool, run the following command in your terminal:

```bash
./uploadtoaws.sh <file_name> <bucket_name>
```

Replace `<file_name>` with the path to the file you want to upload and `<bucket_name>` with the name of your AWS S3 bucket.

## Example

```bash
./uploadtoaws.sh myfile.txt my-s3-bucket
```

This command will upload `myfile.txt` to the S3 bucket named `my-s3-bucket`.

### Script Explanation
  
__Defining Variables:__ file_name and bucket_name capture the first and second command-line arguments, respectively.

__Checking File Existence:__ Validates the presence of the specified file before attempting upload.

__Performing File Upload:__ Utilizes aws s3 cp to upload the file, capturing output and status for error handling.

__Success and Error Reporting:__ Provides clear feedback on the upload process's outcome.  

## Contributing

Feel free to submit issues or pull requests if you have suggestions for improvements or bug fixes.
  
