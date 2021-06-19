#count dealer awk script
BEGIN { FS = "\t"
	OFS = "\t"
	}
{dealercount [$2]++}

END { for (dealer in dealercount)
	{
	print dealer, ":", dealercount[dealer]
	}
}
