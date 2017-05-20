.class public Lcm/aptoide/pt/v8engine/dialog/AdultDialog;
.super Landroid/support/v4/app/t;
.source "AdultDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/t;-><init>()V

    return-void
.end method

.method public static buildAreYouAdultDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcm/aptoide/pt/v8engine/dialog/AdultDialog;->buildAreYouAdultDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static buildAreYouAdultDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->getAdultContentPin()I

    move-result v0

    .line 120
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 121
    invoke-static {p0, p1, p2}, Lcm/aptoide/pt/v8engine/dialog/AdultDialog;->dialogAsk21(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/dialog/AdultDialog;->buildMaturePinInputDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public static buildMaturePinInputDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 39
    .line 40
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$layout;->dialog_requestpin:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 41
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->pininput:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 42
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->getAdultContentPin()I

    move-result v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    .line 44
    new-instance v3, Landroid/support/v7/a/d$a;

    invoke-direct {v3, p0}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/support/v7/a/d$a;->b(Landroid/view/View;)Landroid/support/v7/a/d$a;

    move-result-object v1

    sget v3, Lcm/aptoide/pt/v8engine/R$string;->request_adult_pin:I

    .line 45
    invoke-virtual {v1, v3}, Landroid/support/v7/a/d$a;->b(I)Landroid/support/v7/a/d$a;

    move-result-object v1

    const v3, 0x104000a

    invoke-static {v0, v2, p1, p0}, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$1;->lambdaFactory$(Landroid/widget/EditText;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/app/Activity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    .line 46
    invoke-virtual {v1, v3, v0}, Landroid/support/v7/a/d$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$2;->lambdaFactory$(Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/a/d$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/support/v7/a/d$a;->b()Landroid/support/v7/a/d;

    move-result-object v0

    return-object v0
.end method

.method private static dialogAsk21(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Landroid/support/v7/a/d$a;

    invoke-direct {v0, p0}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->are_you_adult:I

    .line 92
    invoke-virtual {v0, v1}, Landroid/support/v7/a/d$a;->b(I)Landroid/support/v7/a/d$a;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->yes:I

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$5;->lambdaFactory$(Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/a/d$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->no:I

    invoke-static {p2}, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$6;->lambdaFactory$(Landroid/content/DialogInterface$OnCancelListener;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/a/d$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v0

    .line 105
    if-eqz p2, :cond_0

    .line 106
    invoke-static {p2}, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$7;->lambdaFactory$(Landroid/content/DialogInterface$OnCancelListener;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d$a;->a(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/a/d$a;

    .line 108
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/a/d$a;->b()Landroid/support/v7/a/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$buildMaturePinInputDialog$0(Landroid/widget/EditText;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-interface {p2, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 50
    invoke-interface {p4}, Landroid/content/DialogInterface;->dismiss()V

    .line 55
    :goto_0
    return-void

    .line 52
    :cond_0
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->adult_pin_wrong:I

    invoke-static {p3, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/app/Activity;I)V

    .line 53
    invoke-static {p3, p2}, Lcm/aptoide/pt/v8engine/dialog/AdultDialog;->buildMaturePinInputDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method static synthetic lambda$buildMaturePinInputDialog$1(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 57
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 58
    const/4 v0, 0x0

    const/4 v1, -0x2

    invoke-interface {p0, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 59
    return-void
.end method

.method static synthetic lambda$dialogAsk21$4(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 94
    const-class v0, Lcm/aptoide/pt/v8engine/dialog/AdultDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FLURRY TESTING : UNLOCK ADULT CONTENT"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics$AdultContent;->unlock()V

    .line 96
    const/4 v0, -0x1

    invoke-interface {p0, p1, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 97
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 98
    return-void
.end method

.method static synthetic lambda$dialogAsk21$5(Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 100
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 101
    if-eqz p0, :cond_0

    .line 102
    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 104
    :cond_0
    return-void
.end method

.method static synthetic lambda$dialogAsk21$6(Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 106
    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static synthetic lambda$setAdultPinDialog$2(Landroid/widget/EditText;Landroid/support/v7/preference/Preference;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 71
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    .line 72
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->setAdultContentPin(I)V

    .line 75
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->remove_mature_pin_title:I

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->b(I)V

    .line 76
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->remove_mature_pin_summary:I

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->c(I)V

    .line 78
    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-interface {p2, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 79
    return-void
.end method

.method static synthetic lambda$setAdultPinDialog$3(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 81
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 82
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 83
    return-void
.end method

.method public static setAdultPinDialog(Landroid/content/Context;Landroid/support/v7/preference/Preference;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 65
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$layout;->dialog_requestpin:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 66
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->pininput:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 68
    new-instance v2, Landroid/support/v7/a/d$a;

    invoke-direct {v2, p0}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    sget v3, Lcm/aptoide/pt/v8engine/R$string;->asksetadultpinmessage:I

    invoke-virtual {v2, v3}, Landroid/support/v7/a/d$a;->b(I)Landroid/support/v7/a/d$a;

    move-result-object v2

    .line 69
    invoke-virtual {v2, v1}, Landroid/support/v7/a/d$a;->b(Landroid/view/View;)Landroid/support/v7/a/d$a;

    move-result-object v1

    const v2, 0x104000a

    invoke-static {v0, p1, p2}, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$3;->lambdaFactory$(Landroid/widget/EditText;Landroid/support/v7/preference/Preference;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    .line 70
    invoke-virtual {v1, v2, v0}, Landroid/support/v7/a/d$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-static {p2}, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$4;->lambdaFactory$(Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/a/d$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/support/v7/a/d$a;->b()Landroid/support/v7/a/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/AdultDialog;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    new-instance v1, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$1;

    invoke-direct {v1, p0}, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$1;-><init>(Lcm/aptoide/pt/v8engine/dialog/AdultDialog;)V

    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/dialog/AdultDialog;->buildAreYouAdultDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0}, Landroid/support/v4/app/t;->onDetach()V

    .line 129
    return-void
.end method
