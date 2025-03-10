import SwiftUI

struct PhoneLoginView: View {
    @State private var phoneNumber: String = ""
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                // 手机号输入区域
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text("🇨🇳")
                            .font(.system(size: 16))
                        Text("你的手机号是?")
                            .foregroundColor(.black)
                            .font(.system(size: 16))
                    }
                    
                    VStack(alignment: .leading, spacing: 0) {
                        TextField("000-0000-0000", text: $phoneNumber)
                            .font(.system(size: 16))
                            .keyboardType(.phonePad)
                        
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(.gray.opacity(0.3))
                            .padding(.top, 8)
                    }
                }
                .padding(.horizontal, 20)
                
                Spacer()
                
                // 下一步按钮
                HStack {
                    Spacer()
                    Button(action: handleNext) {
                        Text("下一步")
                            .foregroundColor(.white)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10)
                            .background(Color.black)
                            .cornerRadius(5)
                    }
                    .padding(.trailing, 20)
                    .padding(.bottom, 20)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("手机号")
                        .font(.system(size: 18, weight: .medium))
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { dismiss() }) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
    
    private func handleNext() {
        // 处理下一步逻辑
        print("Phone number:", phoneNumber)
    }
}

// 预览
struct PhoneLoginView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneLoginView()
    }
} 