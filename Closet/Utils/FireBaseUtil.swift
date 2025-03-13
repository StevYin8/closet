//
//  FireBaseUtil.swift
//  Closet
//
//  Created by 尹少军 on 2025/3/20.
//
import Foundation

import Firebase
import FirebaseAuth
import FirebaseFirestore


class FireBaseUtil {

    
    private func sendVerificationCode() {
          let fullPhoneNumber = "+86" + phoneNumber // 根据你的地区号调整
          PhoneAuthProvider.provider().verifyPhoneNumber(fullPhoneNumber, uiDelegate: nil) { verificationID, error in
              if let error = error {
                  print("发送验证码失败: \(error.localizedDescription)")
                  return
              }
              UserDefaults.standard.set(verificationID, forKey: "authVerificationID")
              print("验证码已发送: \(verificationID ?? "")")
          }
      }

      private func verifyCode() {
          let verificationID = UserDefaults.standard.string(forKey: "authVerificationID") ?? ""
          let credential = PhoneAuthProvider.provider().credential(
              withVerificationID: verificationID,
              verificationCode: verificationCode
          )

          Auth.auth().signIn(with: credential) { authResult, error in
              if let error = error {
                  print("验证码验证失败: \(error.localizedDescription)")
                  return
              }
              print("验证成功，用户 ID: \(authResult?.user.uid ?? "")")
          }
      }
    
}

