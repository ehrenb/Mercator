.class public Lcm/aptoide/pt/utils/GenericDialogs;
.super Ljava/lang/Object;
.source "GenericDialogs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/utils/GenericDialogs$EResponse;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGenericContinueCancelMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/utils/GenericDialogs$EResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {p0, p1, p2}, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$4;->lambdaFactory$(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d$a;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static createGenericContinueMessage(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/utils/GenericDialogs$EResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {p0, p2, p3, p4, p1}, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$3;->lambdaFactory$(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/view/View;)Lrx/d$a;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static createGenericContinueMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/utils/GenericDialogs$EResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x0

    sget v1, Lcm/aptoide/pt/utils/R$string;->continue_option:I

    invoke-static {p0, v0, p1, p2, v1}, Lcm/aptoide/pt/utils/GenericDialogs;->createGenericContinueMessage(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static createGenericOkCancelMessage(Landroid/content/Context;Ljava/lang/String;III)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "III)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/utils/GenericDialogs$EResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    invoke-static {p0, p1, p2, p3, p4}, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$5;->lambdaFactory$(Landroid/content/Context;Ljava/lang/String;III)Lrx/d$a;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static createGenericOkCancelMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/utils/GenericDialogs$EResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p0, p1, p2}, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$2;->lambdaFactory$(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d$a;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static createGenericOkMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/utils/GenericDialogs$EResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x0

    const v1, 0x104000a

    invoke-static {p0, v0, p1, p2, v1}, Lcm/aptoide/pt/utils/GenericDialogs;->createGenericContinueMessage(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static createGenericPleaseWaitDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 2

    .prologue
    .line 183
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 184
    sget v1, Lcm/aptoide/pt/utils/R$string;->please_wait:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 185
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 186
    return-object v0
.end method

.method public static createGenericPleaseWaitDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 2

    .prologue
    .line 195
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 196
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 197
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 198
    return-object v0
.end method

.method public static createGenericShareDialog(Landroid/content/Context;Ljava/lang/String;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/utils/GenericDialogs$EResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {p0, p1}, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$6;->lambdaFactory$(Landroid/content/Context;Ljava/lang/String;)Lrx/d$a;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static createGenericYesNoCancelMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/utils/GenericDialogs$EResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$1;->lambdaFactory$(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d$a;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    .line 58
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$createGenericContinueCancelMessage$14(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lrx/j;)V
    .locals 3

    .prologue
    .line 127
    new-instance v0, Landroid/support/v7/a/d$a;

    invoke-direct {v0, p0}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/support/v7/a/d$a;->a(Ljava/lang/CharSequence;)Landroid/support/v7/a/d$a;

    move-result-object v0

    .line 128
    invoke-virtual {v0, p2}, Landroid/support/v7/a/d$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/a/d$a;

    move-result-object v0

    const v1, 0x104000a

    invoke-static {p3}, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$13;->lambdaFactory$(Lrx/j;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/a/d$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-static {p3}, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$14;->lambdaFactory$(Lrx/j;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/a/d$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v0

    invoke-static {p3}, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$15;->lambdaFactory$(Lrx/j;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Landroid/support/v7/a/d$a;->a(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/a/d$a;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/support/v7/a/d$a;->b()Landroid/support/v7/a/d;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$16;->lambdaFactory$(Landroid/support/v7/a/d;)Lrx/b/a;

    move-result-object v1

    invoke-static {v1}, Lrx/j/e;->a(Lrx/b/a;)Lrx/k;

    move-result-object v1

    invoke-virtual {p3, v1}, Lrx/j;->add(Lrx/k;)V

    .line 144
    invoke-virtual {v0}, Landroid/support/v7/a/d;->show()V

    .line 145
    return-void
.end method

.method static synthetic lambda$createGenericContinueMessage$10(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/view/View;Lrx/j;)V
    .locals 2

    .prologue
    .line 109
    new-instance v0, Landroid/support/v7/a/d$a;

    invoke-direct {v0, p0}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/support/v7/a/d$a;->a(Ljava/lang/CharSequence;)Landroid/support/v7/a/d$a;

    move-result-object v0

    .line 110
    invoke-virtual {v0, p2}, Landroid/support/v7/a/d$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/a/d$a;

    move-result-object v0

    invoke-static {p5}, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$17;->lambdaFactory$(Lrx/j;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    .line 111
    invoke-virtual {v0, p3, v1}, Landroid/support/v7/a/d$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v0

    .line 115
    if-eqz p4, :cond_0

    .line 116
    invoke-virtual {v0, p4}, Landroid/support/v7/a/d$a;->b(Landroid/view/View;)Landroid/support/v7/a/d$a;

    .line 118
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/a/d$a;->b()Landroid/support/v7/a/d;

    move-result-object v0

    .line 119
    invoke-static {v0}, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$18;->lambdaFactory$(Landroid/support/v7/a/d;)Lrx/b/a;

    move-result-object v1

    invoke-static {v1}, Lrx/j/e;->a(Lrx/b/a;)Lrx/k;

    move-result-object v1

    invoke-virtual {p5, v1}, Lrx/j;->add(Lrx/k;)V

    .line 120
    invoke-virtual {v0}, Landroid/support/v7/a/d;->show()V

    .line 121
    return-void
.end method

.method static synthetic lambda$createGenericOkCancelMessage$18(Landroid/content/Context;Ljava/lang/String;IIILrx/j;)V
    .locals 2

    .prologue
    .line 151
    new-instance v0, Landroid/support/v7/a/d$a;

    invoke-direct {v0, p0}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/support/v7/a/d$a;->a(Ljava/lang/CharSequence;)Landroid/support/v7/a/d$a;

    move-result-object v0

    .line 152
    invoke-virtual {v0, p2}, Landroid/support/v7/a/d$a;->b(I)Landroid/support/v7/a/d$a;

    move-result-object v0

    invoke-static {p5}, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$9;->lambdaFactory$(Lrx/j;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    .line 153
    invoke-virtual {v0, p3, v1}, Landroid/support/v7/a/d$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v0

    invoke-static {p5}, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$10;->lambdaFactory$(Lrx/j;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    .line 157
    invoke-virtual {v0, p4, v1}, Landroid/support/v7/a/d$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v0

    invoke-static {p5}, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$11;->lambdaFactory$(Lrx/j;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v1

    .line 161
    invoke-virtual {v0, v1}, Landroid/support/v7/a/d$a;->a(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/a/d$a;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/support/v7/a/d$a;->b()Landroid/support/v7/a/d;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$12;->lambdaFactory$(Landroid/support/v7/a/d;)Lrx/b/a;

    move-result-object v1

    invoke-static {v1}, Lrx/j/e;->a(Lrx/b/a;)Lrx/k;

    move-result-object v1

    invoke-virtual {p5, v1}, Lrx/j;->add(Lrx/k;)V

    .line 168
    invoke-virtual {v0}, Landroid/support/v7/a/d;->show()V

    .line 169
    return-void
.end method

.method static synthetic lambda$createGenericOkCancelMessage$7(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lrx/j;)V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Landroid/support/v7/a/d$a;

    invoke-direct {v0, p0}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/support/v7/a/d$a;->a(Ljava/lang/CharSequence;)Landroid/support/v7/a/d$a;

    move-result-object v0

    .line 75
    invoke-virtual {v0, p2}, Landroid/support/v7/a/d$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/a/d$a;

    move-result-object v0

    const v1, 0x104000a

    invoke-static {p3}, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$19;->lambdaFactory$(Lrx/j;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/a/d$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-static {p3}, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$20;->lambdaFactory$(Lrx/j;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/a/d$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/support/v7/a/d$a;->b()Landroid/support/v7/a/d;

    move-result-object v0

    .line 86
    invoke-static {v0}, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$21;->lambdaFactory$(Landroid/support/v7/a/d;)Lrx/b/a;

    move-result-object v1

    invoke-static {v1}, Lrx/j/e;->a(Lrx/b/a;)Lrx/k;

    move-result-object v1

    invoke-virtual {p3, v1}, Lrx/j;->add(Lrx/k;)V

    .line 87
    invoke-virtual {v0}, Landroid/support/v7/a/d;->show()V

    .line 88
    return-void
.end method

.method static synthetic lambda$createGenericShareDialog$20(Landroid/content/Context;Ljava/lang/String;Lrx/j;)V
    .locals 3

    .prologue
    .line 203
    new-instance v0, Landroid/support/v7/a/d$a;

    invoke-direct {v0, p0}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/support/v7/a/d$a;->a(Ljava/lang/CharSequence;)Landroid/support/v7/a/d$a;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/utils/R$array;->share_options_array:I

    invoke-static {p2}, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$7;->lambdaFactory$(Lrx/j;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 204
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/a/d$a;->d(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Landroid/support/v7/a/d$a;->b()Landroid/support/v7/a/d;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$8;->lambdaFactory$(Landroid/support/v7/a/d;)Lrx/b/a;

    move-result-object v1

    invoke-static {v1}, Lrx/j/e;->a(Lrx/b/a;)Lrx/k;

    move-result-object v1

    invoke-virtual {p2, v1}, Lrx/j;->add(Lrx/k;)V

    .line 226
    invoke-virtual {v0}, Landroid/support/v7/a/d;->show()V

    .line 227
    return-void
.end method

.method static synthetic lambda$createGenericYesNoCancelMessage$3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lrx/j;)V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Landroid/support/v7/a/d$a;

    invoke-direct {v0, p0}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/support/v7/a/d$a;->a(Ljava/lang/CharSequence;)Landroid/support/v7/a/d$a;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p2}, Landroid/support/v7/a/d$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/a/d$a;

    move-result-object v0

    const v1, 0x1040013

    invoke-static {p3}, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$22;->lambdaFactory$(Lrx/j;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/a/d$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v0

    const v1, 0x1040009

    invoke-static {p3}, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$23;->lambdaFactory$(Lrx/j;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/a/d$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v0

    invoke-static {p3}, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$24;->lambdaFactory$(Lrx/j;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Landroid/support/v7/a/d$a;->a(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/a/d$a;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/support/v7/a/d$a;->b()Landroid/support/v7/a/d;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$25;->lambdaFactory$(Landroid/support/v7/a/d;)Lrx/b/a;

    move-result-object v1

    invoke-static {v1}, Lrx/j/e;->a(Lrx/b/a;)Lrx/k;

    move-result-object v1

    invoke-virtual {p3, v1}, Lrx/j;->add(Lrx/k;)V

    .line 57
    invoke-virtual {v0}, Landroid/support/v7/a/d;->show()V

    .line 58
    return-void
.end method

.method static synthetic lambda$null$0(Lrx/j;Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->YES:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p0, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0}, Lrx/j;->onCompleted()V

    .line 45
    return-void
.end method

.method static synthetic lambda$null$1(Lrx/j;Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->NO:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p0, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p0}, Lrx/j;->onCompleted()V

    .line 49
    return-void
.end method

.method static synthetic lambda$null$11(Lrx/j;Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->YES:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p0, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p0}, Lrx/j;->onCompleted()V

    .line 132
    return-void
.end method

.method static synthetic lambda$null$12(Lrx/j;Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->NO:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p0, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 135
    invoke-virtual {p0}, Lrx/j;->onCompleted()V

    .line 136
    return-void
.end method

.method static synthetic lambda$null$13(Lrx/j;Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->CANCEL:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p0, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 139
    invoke-virtual {p0}, Lrx/j;->onCompleted()V

    .line 140
    return-void
.end method

.method static synthetic lambda$null$15(Lrx/j;Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->YES:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p0, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 155
    invoke-virtual {p0}, Lrx/j;->onCompleted()V

    .line 156
    return-void
.end method

.method static synthetic lambda$null$16(Lrx/j;Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->NO:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p0, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 159
    invoke-virtual {p0}, Lrx/j;->onCompleted()V

    .line 160
    return-void
.end method

.method static synthetic lambda$null$17(Lrx/j;Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->CANCEL:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p0, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 163
    invoke-virtual {p0}, Lrx/j;->onCompleted()V

    .line 164
    return-void
.end method

.method static synthetic lambda$null$19(Lrx/j;Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 205
    packed-switch p2, :pswitch_data_0

    .line 220
    :goto_0
    :pswitch_0
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->YES:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p0, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 221
    invoke-virtual {p0}, Lrx/j;->onCompleted()V

    .line 222
    return-void

    .line 207
    :pswitch_1
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->SHARE_EXTERNAL:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p0, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 208
    invoke-virtual {p0}, Lrx/j;->onCompleted()V

    goto :goto_0

    .line 211
    :pswitch_2
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->SHARE_TIMELINE:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p0, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 212
    invoke-virtual {p0}, Lrx/j;->onCompleted()V

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$null$2(Lrx/j;Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->CANCEL:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p0, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p0}, Lrx/j;->onCompleted()V

    .line 53
    return-void
.end method

.method static synthetic lambda$null$4(Lrx/j;Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->YES:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p0, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 78
    invoke-virtual {p0}, Lrx/j;->onCompleted()V

    .line 79
    return-void
.end method

.method static synthetic lambda$null$5(Lrx/j;Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->CANCEL:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p0, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0}, Lrx/j;->onCompleted()V

    .line 83
    return-void
.end method

.method static synthetic lambda$null$6(Landroid/support/v7/a/d;)V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/support/v7/a/d;->dismiss()V

    return-void
.end method

.method static synthetic lambda$null$8(Lrx/j;Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->YES:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p0, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {p0}, Lrx/j;->onCompleted()V

    .line 114
    return-void
.end method

.method static synthetic lambda$null$9(Landroid/support/v7/a/d;)V
    .locals 0

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/support/v7/a/d;->dismiss()V

    return-void
.end method
