local Compress = {}
function StandardCompression(Input)

end
function InlineCompression(Input)

end
function Compress.Execute(Input)
  if #Input > 1 then
	return InlineCompression(Input)
  else
	return StandardCompression
  end
end
return Compress