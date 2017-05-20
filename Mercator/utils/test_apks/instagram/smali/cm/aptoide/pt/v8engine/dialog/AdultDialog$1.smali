.class Lcm/aptoide/pt/v8engine/dialog/AdultDialog$1;
.super Ljava/lang/Object;
.source "AdultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/dialog/AdultDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/dialog/AdultDialog;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/dialog/AdultDialog;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$1;->this$0:Lcm/aptoide/pt/v8engine/dialog/AdultDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 135
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 136
    const/4 v0, 0x1

    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->setAdultSwitch(Z)V

    .line 138
    :cond_0
    return-void
.end method
