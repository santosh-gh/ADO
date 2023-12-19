# ADO

# Directory	                                Uses                                     References
# /a	                    This is the working director for agent a.	            Agent.WorkFolder
# /a/1/a	Artifact staging directory. This is where the VS Build task results are stored in. The publish build artifacts task creates an artifact of whatever is in this folder. Note - it gets purged before each new build.	Build.StagingDirectory, System.ArtifactsDirectory, Build.ArtifactStagingDirectory
# /a/1/b	The output folder for compiled binaries.	Build.BinariesDirectory
# /a/1/s	Source directory. This is the working directory and where your source code is stored.	Build.SourcesDirectory, System.DefaultWorkingDirectory