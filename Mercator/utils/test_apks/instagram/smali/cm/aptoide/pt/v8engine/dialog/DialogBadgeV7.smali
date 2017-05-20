.class public Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;
.super Landroid/support/v4/app/t;
.source "DialogBadgeV7.java"


# instance fields
.field protected appName:Ljava/lang/String;

.field protected malware:Lcm/aptoide/pt/model/v7/Malware;

.field protected rank:Lcm/aptoide/pt/model/v7/Malware$Rank;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/t;-><init>()V

    return-void
.end method

.method public static newInstance(Lcm/aptoide/pt/model/v7/Malware;Ljava/lang/String;Lcm/aptoide/pt/model/v7/Malware$Rank;)Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;-><init>()V

    .line 36
    iput-object p0, v0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->malware:Lcm/aptoide/pt/model/v7/Malware;

    .line 37
    iput-object p1, v0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->appName:Ljava/lang/String;

    .line 38
    iput-object p2, v0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->rank:Lcm/aptoide/pt/model/v7/Malware$Rank;

    .line 39
    return-object v0
.end method


# virtual methods
.method synthetic lambda$onCreateDialog$0(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 57
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/support/v4/app/t;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 45
    const v0, 0x103006e

    invoke-virtual {p0, v2, v0}, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->setStyle(II)V

    .line 49
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->setRetainInstance(Z)V

    .line 50
    return-void

    .line 47
    :cond_0
    const v0, 0x103000b

    invoke-virtual {p0, v2, v0}, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->setStyle(II)V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 53
    .line 54
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$layout;->layout_dialog_badge:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 55
    new-instance v0, Landroid/support/v7/a/d$a;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->getActivity()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/a/d$a;->b(Landroid/view/View;)Landroid/support/v7/a/d$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/d$a;->b()Landroid/support/v7/a/d;

    move-result-object v1

    .line 57
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->dialog_ok_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->malware:Lcm/aptoide/pt/model/v7/Malware;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->malware:Lcm/aptoide/pt/model/v7/Malware;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware;->getRank()Lcm/aptoide/pt/model/v7/Malware$Rank;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7$1;->$SwitchMap$cm$aptoide$pt$model$v7$Malware$Rank:[I

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->malware:Lcm/aptoide/pt/model/v7/Malware;

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Malware;->getRank()Lcm/aptoide/pt/model/v7/Malware$Rank;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Malware$Rank;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 76
    :cond_0
    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->malware:Lcm/aptoide/pt/model/v7/Malware;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->malware:Lcm/aptoide/pt/model/v7/Malware;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware;->getReason()Lcm/aptoide/pt/model/v7/Malware$Reason;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 77
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->malware:Lcm/aptoide/pt/model/v7/Malware;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware;->getReason()Lcm/aptoide/pt/model/v7/Malware$Reason;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware$Reason;->getScanned()Lcm/aptoide/pt/model/v7/Malware$Reason$Scanned;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->malware:Lcm/aptoide/pt/model/v7/Malware;

    .line 78
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware;->getReason()Lcm/aptoide/pt/model/v7/Malware$Reason;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware$Reason;->getScanned()Lcm/aptoide/pt/model/v7/Malware$Reason$Scanned;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware$Reason$Scanned;->getStatus()Lcm/aptoide/pt/model/v7/Malware$Reason$Status;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcm/aptoide/pt/model/v7/Malware$Reason$Status;->passed:Lcm/aptoide/pt/model/v7/Malware$Reason$Status;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->malware:Lcm/aptoide/pt/model/v7/Malware;

    .line 80
    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Malware;->getReason()Lcm/aptoide/pt/model/v7/Malware$Reason;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Malware$Reason;->getScanned()Lcm/aptoide/pt/model/v7/Malware$Reason$Scanned;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Malware$Reason$Scanned;->getStatus()Lcm/aptoide/pt/model/v7/Malware$Reason$Status;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcm/aptoide/pt/model/v7/Malware$Reason$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcm/aptoide/pt/model/v7/Malware$Reason$Status;->warn:Lcm/aptoide/pt/model/v7/Malware$Reason$Status;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->malware:Lcm/aptoide/pt/model/v7/Malware;

    .line 81
    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Malware;->getReason()Lcm/aptoide/pt/model/v7/Malware$Reason;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Malware$Reason;->getScanned()Lcm/aptoide/pt/model/v7/Malware$Reason$Scanned;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Malware$Reason$Scanned;->getStatus()Lcm/aptoide/pt/model/v7/Malware$Reason$Status;

    move-result-object v3

    .line 80
    invoke-virtual {v0, v3}, Lcm/aptoide/pt/model/v7/Malware$Reason$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->malware:Lcm/aptoide/pt/model/v7/Malware;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware;->getReason()Lcm/aptoide/pt/model/v7/Malware$Reason;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware$Reason;->getScanned()Lcm/aptoide/pt/model/v7/Malware$Reason$Scanned;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware$Reason$Scanned;->getAvInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 84
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->tr_scanned:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 88
    :cond_2
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->malware:Lcm/aptoide/pt/model/v7/Malware;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware;->getReason()Lcm/aptoide/pt/model/v7/Malware$Reason;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware$Reason;->getThirdpartyValidated()Lcm/aptoide/pt/model/v7/Malware$Reason$ThirdPartyValidated;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "Google Play"

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->malware:Lcm/aptoide/pt/model/v7/Malware;

    .line 90
    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Malware;->getReason()Lcm/aptoide/pt/model/v7/Malware$Reason;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Malware$Reason;->getThirdpartyValidated()Lcm/aptoide/pt/model/v7/Malware$Reason$ThirdPartyValidated;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Malware$Reason$ThirdPartyValidated;->getStore()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->tr_third_party:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :cond_3
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->malware:Lcm/aptoide/pt/model/v7/Malware;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware;->getReason()Lcm/aptoide/pt/model/v7/Malware$Reason;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware$Reason;->getSignatureValidated()Lcm/aptoide/pt/model/v7/Malware$Reason$SignatureValidated;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->malware:Lcm/aptoide/pt/model/v7/Malware;

    .line 95
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware;->getReason()Lcm/aptoide/pt/model/v7/Malware$Reason;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware$Reason;->getSignatureValidated()Lcm/aptoide/pt/model/v7/Malware$Reason$SignatureValidated;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware$Reason$SignatureValidated;->getStatus()Lcm/aptoide/pt/model/v7/Malware$Reason$Status;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 97
    sget-object v0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7$1;->$SwitchMap$cm$aptoide$pt$model$v7$Malware$Reason$Status:[I

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->malware:Lcm/aptoide/pt/model/v7/Malware;

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Malware;->getReason()Lcm/aptoide/pt/model/v7/Malware$Reason;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Malware$Reason;->getSignatureValidated()Lcm/aptoide/pt/model/v7/Malware$Reason$SignatureValidated;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Malware$Reason$SignatureValidated;->getStatus()Lcm/aptoide/pt/model/v7/Malware$Reason$Status;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Malware$Reason$Status;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_1

    .line 120
    :cond_4
    :goto_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->malware:Lcm/aptoide/pt/model/v7/Malware;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware;->getReason()Lcm/aptoide/pt/model/v7/Malware$Reason;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware$Reason;->getManual()Lcm/aptoide/pt/model/v7/Malware$Reason$Manual;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->malware:Lcm/aptoide/pt/model/v7/Malware;

    .line 121
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware;->getReason()Lcm/aptoide/pt/model/v7/Malware$Reason;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware$Reason;->getManual()Lcm/aptoide/pt/model/v7/Malware$Reason$Manual;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware$Reason$Manual;->getStatus()Lcm/aptoide/pt/model/v7/Malware$Reason$Status;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v0, Lcm/aptoide/pt/model/v7/Malware$Reason$Status;->passed:Lcm/aptoide/pt/model/v7/Malware$Reason$Status;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->malware:Lcm/aptoide/pt/model/v7/Malware;

    .line 123
    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Malware;->getReason()Lcm/aptoide/pt/model/v7/Malware$Reason;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Malware$Reason;->getManual()Lcm/aptoide/pt/model/v7/Malware$Reason$Manual;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Malware$Reason$Manual;->getStatus()Lcm/aptoide/pt/model/v7/Malware$Reason$Status;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcm/aptoide/pt/model/v7/Malware$Reason$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 124
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->tr_manual:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    move-object v0, v1

    .line 128
    :goto_2
    return-object v0

    .line 63
    :pswitch_0
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->trusted_header_layout:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 66
    :pswitch_1
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->warning_header_layout:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 69
    :pswitch_2
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->unknown_header_layout:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 70
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->tr_unknown:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    move-object v0, v1

    .line 72
    goto :goto_2

    .line 99
    :pswitch_3
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->tr_signature:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 100
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->tv_reason_signature_validation:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v3, Lcm/aptoide/pt/v8engine/R$string;->reason_signature:I

    .line 101
    invoke-virtual {p0, v3}, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 105
    :pswitch_4
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->tr_signature:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 106
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->iv_signature:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 107
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->tv_reason_signature_validation:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v3, Lcm/aptoide/pt/v8engine/R$string;->reason_failed:I

    .line 108
    invoke-virtual {p0, v3}, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 97
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 132
    invoke-super {p0}, Landroid/support/v4/app/t;->onStart()V

    .line 133
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 135
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 134
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    return-void
.end method
