=begin
���K���

��1.

1.1?100�܂ł̐����������ɕ��Ԕz��a���쐬����

2.[1]�̔z��̊e�v�f��100�{�����A�V�����z��b���쐬����

3.[1]�̔z��̊e�v�f����3�̔{���̂ݎ擾�����A�V�����z��c���쐬����

4.[1]�̔z����t���ɕ��ёւ�����

5.[1]�̔z��Ɋ܂܂�鐮���̘a�����߂�

6.���l����Ȃ�z��array1�Ɣz��array2�̂����̂����̗v�f�𑫂����킹�����ʂ�z��ŕԂ�sum_array���\�b�h
�@���쐬����

���s��j
p sum_array([1,2,3],[4,5,6]) # �o��: [5,7,9]


��2.

1."stay foolish stay hungry"�Ƃ���������̊e�P���v�f�Ƃ���z����쐬����

2.[1]�̔z����A���t�@�x�b�g���Ƀ\�[�g����

3.[1]�̔z��Ɋ܂܂�镶�����S�ĒP��̐擪��啶���ɂ���

��3.

1.�j����\���p��Ɠ��{��̑Ή���\���n�b�V��wday���`����

���s��)
p wday[:sunday] # �o��: "���j��"

2.[1]�̃f�[�^����7���擾����R�[�h���L�ڂ���

3.each���\�b�h���g�p��[1]�̃n�b�V�����牺�L���ʂ��擾����

�p��[sunday]�͓��{��œ��j���ł��B
?(��T�ԕ�)

��4.

1.1�̂��������U���ďo���ڂ�Ԃ����\�b�hdice���쐬����

2.10�̂��������U���ďo���ڂ̍��v�l��Ԃ����\�b�hdice10���쐬����
=end

##��P

a = []
100.times do |i|
    a.push(i+1)
end

p "Array a: #{a}"

b = a.clone
b.collect!{|item|item*100}

p "Array b: #{b}"

c=[]

a.each do |i|
    if i%3==0
	c.push(i)
    end
end

p "Array c: #{c}"

a.reverse!

p "Reverse a: #{a}"

d=0

a.each do |i|
    d = i+d
end

p "Sum: #{d}"

def sum_array(array1,array2)
    sum = []
    if array1.length > array2.length
	array1.length.times do |i|
	    sum.push(array1[i]+array2[i])
	end
    	return sum
    else
	array2.length.times do |i|
	    sum.push(array1[i]+array2[i])
	end
	return sum
    end
end

p "sum: #{sum_array([1,2,3],[4,5,6])}"

##��2

stri = %w(stay foolish stay hungry)

p stri

stri.sort!

p stri

stri.collect!{|item|item.capitalize}

p stri

##��3.

wday = {monday: "���j��",tuesday: "�Ηj��",wednesday: "���j��", 
thursday: "�ؗj��", friday: "���j��", saturday: "�y�j��", sunday: "���j��"}

p "sunday: #{wday[:sunday]}"

p "Size #{wday.size}"

wday.each do |a,b|
    p "�p��[sunday]�͓��{��œ��j���ł�"
end

##��4.

def dice
    p "one dice method number: #{rand(1..6)}"
end

dice

def dice10
    10.times do |i|
       p "dice#{i} method number: #{rand(1..6)}"
    end
end

dice10
