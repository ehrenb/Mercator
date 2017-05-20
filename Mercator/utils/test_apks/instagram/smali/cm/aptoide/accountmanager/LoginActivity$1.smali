.class Lcm/aptoide/accountmanager/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/accountmanager/LoginActivity;->setupShowHidePassButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/accountmanager/LoginActivity;


# direct methods
.method constructor <init>(Lcm/aptoide/accountmanager/LoginActivity;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcm/aptoide/accountmanager/LoginActivity$1;->this$0:Lcm/aptoide/accountmanager/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoginActivity$1;->this$0:Lcm/aptoide/accountmanager/LoginActivity;

    # getter for: Lcm/aptoide/accountmanager/LoginActivity;->password_box:Landroid/widget/EditText;
    invoke-static {v0}, Lcm/aptoide/accountmanager/LoginActivity;->access$000(Lcm/aptoide/accountmanager/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    .line 129
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoginActivity$1;->this$0:Lcm/aptoide/accountmanager/LoginActivity;

    # getter for: Lcm/aptoide/accountmanager/LoginActivity;->password_box:Landroid/widget/EditText;
    invoke-static {v0}, Lcm/aptoide/accountmanager/LoginActivity;->access$000(Lcm/aptoide/accountmanager/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 130
    :goto_0
    if-eqz v1, :cond_1

    sget v0, Lcm/aptoide/accountmanager/R$drawable;->icon_closed_eye:I

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 132
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoginActivity$1;->this$0:Lcm/aptoide/accountmanager/LoginActivity;

    # getter for: Lcm/aptoide/accountmanager/LoginActivity;->password_box:Landroid/widget/EditText;
    invoke-static {v0}, Lcm/aptoide/accountmanager/LoginActivity;->access$000(Lcm/aptoide/accountmanager/LoginActivity;)Landroid/widget/EditText;

    move-result-object v3

    if-eqz v1, :cond_2

    new-instance v0, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v0}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 134
    iget-object v0, p0, Lcm/aptoide/accountmanager/LoginActivity$1;->this$0:Lcm/aptoide/accountmanager/LoginActivity;

    # getter for: Lcm/aptoide/accountmanager/LoginActivity;->password_box:Landroid/widget/EditText;
    invoke-static {v0}, Lcm/aptoide/accountmanager/LoginActivity;->access$000(Lcm/aptoide/accountmanager/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 135
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 130
    :cond_1
    sget v0, Lcm/aptoide/accountmanager/R$drawable;->icon_open_eye:I

    goto :goto_1

    .line 132
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method
