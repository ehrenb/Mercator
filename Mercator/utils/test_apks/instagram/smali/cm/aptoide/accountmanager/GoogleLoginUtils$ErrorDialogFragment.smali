.class public Lcm/aptoide/accountmanager/GoogleLoginUtils$ErrorDialogFragment;
.super Landroid/support/v4/app/t;
.source "GoogleLoginUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/accountmanager/GoogleLoginUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Landroid/support/v4/app/t;-><init>()V

    .line 186
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 190
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/GoogleLoginUtils$ErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dialog_error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 191
    invoke-static {}, Lcom/google/android/gms/common/b;->a()Lcom/google/android/gms/common/b;

    move-result-object v1

    .line 192
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/GoogleLoginUtils$ErrorDialogFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v2

    const/16 v3, 0x3e9

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/common/b;->a(Landroid/app/Activity;II)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 196
    invoke-static {}, Lcm/aptoide/accountmanager/GoogleLoginUtils;->onDialogDismissed()V

    .line 197
    return-void
.end method
