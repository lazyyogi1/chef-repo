file "firstfile.txt" do
	content "this is my first file that is created by chef"
end
directory "testdir"
file "testdir/testfile.txt" do
	content 'this is my second test file'
end

package 'httpd'

service	'httpd' do
	action	:start
end
