#$filename = cmd /c "dir /mnt/c/Users/tandr/Documents/EngHacks"| select  -last 1
#Get-Item -Path /mnt/c/Users/tandr/Documents/EngHacks -Include $filename
#Write-Host $filename

$lastFile = gci -Path /mnt/c/Users/tandr/Documents/Audacity -File | Sort-Object -Property LastWriteTime -Descending | Select FullName -First 1 
Write-Host $lastFile

$text = deepspeech models/output_graph.pb $lastFile.FullName models/alphabet.txt models/lm.binary models/trie
Write-Host $text
If (test-path "/mnt/c/Users/tandr/Documents/EngHacks/textfile") {Remove-Item "/mnt/c/Users/tandr/Documents/EngHacks/textfile"}
"$text"| out-file -filepath /mnt/c/Users/tandr/Documents/EngHacks/textfile -append -width 200
python "/mnt/c/Users/tandr/Documents/EngHacks/pythonTest.py"