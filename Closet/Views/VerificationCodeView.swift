import SwiftUI

struct VerificationCodeView: View {
    @State private var verificationCode: String = ""
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 20) {
                // Instructional Text
                VStack(alignment: .center, spacing: 8) {
                    Text("请输入4位验证码")
                        .font(.system(size: 16))
                        .foregroundColor(.black)
                    Text("发送至 +86 **** 1234")
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                }
                .padding(.top, 40)

                // Text Input Field
                TextField("输入验证码", text: $verificationCode)
                    .keyboardType(.numberPad)
                    .textFieldStyle(PlainTextFieldStyle())
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 5).stroke(Color.gray, lineWidth: 1))
                    .frame(width: 200, height: 44)
                    .multilineTextAlignment(.center)
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            UIApplication.shared.sendAction(#selector(UIResponder.becomeFirstResponder), to: nil, from: nil, for: nil)
                        }
                    }

                Spacer()

                // Next Button
                Button(action: handleNext) {
                    Text("下一步")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(verificationCode.count == 4 ? Color.black : Color.gray)
                        .cornerRadius(5)
                }
                .disabled(verificationCode.count != 4)
                .padding(.horizontal, 40)
                .padding(.bottom, 20)
            }
            .padding()
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("验证码")
                        .font(.system(size: 18, weight: .medium))
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { dismiss() }) {
                        Image(systemName: "arrow.clockwise")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }

    private func handleNext() {
        // Handle the next step logic
        print("Verification code:", verificationCode)
    }
}

struct VerificationCodeView_Previews: PreviewProvider {
    static var previews: some View {
        VerificationCodeView()
    }
}//
//  PhoneVrifyCode.swift
//  Closet
//
//  Created by 尹少军 on 2025/3/10.
//

