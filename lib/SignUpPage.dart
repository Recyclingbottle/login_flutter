import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _idController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _nameController = TextEditingController();
  final _birthController = TextEditingController();
  String? _selectedGender;


  // 생년월일 선택용 드롭다운 메뉴에 사용될 아이템 리스트
  final _yearList = List.generate(100, (index) => 2022 - index);
  final _monthList = List.generate(12, (index) => index + 1);
  final _dayList = List.generate(31, (index) => index + 1);

// 생년월일 선택용 드롭다운 메뉴의 선택된 값
  int? _selectedYear;
  int? _selectedMonth;
  int? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('회원가입'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _idController,
                decoration: InputDecoration(
                  labelText: '아이디',
                ),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return '아이디를 입력하세요';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: '비밀번호',
                ),
                obscureText: true,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return '비밀번호를 입력하세요';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(
                  labelText: '비밀번호 확인',
                ),
                obscureText: true,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return '비밀번호 확인을 입력하세요';
                  }
                  if (value != _passwordController.text) {
                    return '비밀번호가 일치하지 않습니다';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: '이름',
                ),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return '이름을 입력하세요';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
            DropdownButtonFormField<int>(
              value: _selectedYear,
              items: _yearList.map((year) {
                return DropdownMenuItem<int>(
                  value: year,
                  child: Text('$year년'),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedYear = value;
                });
              },
              decoration: InputDecoration(
                labelText: '생년',
              ),
              validator: (value) {
                if (value == null) {
                  return '생년을 선택하세요';
                }
                return null;
              },
            ),
            SizedBox(height: 16.0),
            DropdownButtonFormField<int>(
              value: _selectedMonth,
              items: _monthList.map((month) {
                return DropdownMenuItem<int>(
                  value: month,
                  child: Text('$month월'),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedMonth = value;
                });
              },
              decoration: InputDecoration(
                labelText: '월',
              ),
              validator: (value) {
                if (value == null) {
                  return '월을 선택하세요';
                }
                return null;
              },
            ),
            SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: DropdownButtonFormField<int>(
                      value: _selectedYear,
                      items: _yearList.map((year) {
                        return DropdownMenuItem<int>(
                          value: year,
                          child: Text('$year년'),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedYear = value;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: '년도',
                      ),
                      validator: (value) {
                        if (value == null) {
                          return '년도를 선택하세요';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: DropdownButtonFormField<int>(
                      value: _selectedMonth,
                      items: _monthList.map((month) {
                        return DropdownMenuItem<int>(
                          value: month,
                          child: Text('$month월'),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedMonth = value;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: '월',
                      ),
                      validator: (value) {
                        if (value == null) {
                          return '월을 선택하세요';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: DropdownButtonFormField<int>(
                      value: _selectedDay,
                      items: _dayList.map((day) {
                        return DropdownMenuItem<int>(
                          value: day,
                          child: Text('$day일'),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedDay = value;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: '일',
                      ),
                      validator: (value) {
                        if (value == null) {
                          return '일을 선택하세요';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                value: _selectedGender,
                items: ['남성', '여성']
                    .map((label) => DropdownMenuItem(
                  child: Text(label),
                  value: label,
                ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedGender = value;
                  });
                },
                decoration: InputDecoration(
                  labelText: '성별',
                ),
                validator: (value) {
                  if (value == null) {
                    return '성별을 선택하세요';
                  }
                  return null;
                },
              ),
              SizedBox(height: 32.0),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() == true) {
                      // 회원가입 로직 처리
            }
          },
          child: Text('회원가입'),
                 ),
                ),
               ],
             ),
          ),
        ),
    );
  }
}
