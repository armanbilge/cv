require 'rake/clean'

CLEAN.include 'cv.aux'
CLEAN.include 'cv.log'
CLOBBER << 'cv.pdf'

task :default => 'cv.pdf'

file 'cv.pdf' => ['cv.tex', 'tracv.cls'] do |t|
  sh "pdflatex #{t.source}"
end
