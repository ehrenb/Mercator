.class public Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;
.super Ljava/lang/Object;
.source "InstallWarningDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog$ViewOnClickListenerComposite;
    }
.end annotation


# instance fields
.field private dialog:Landroid/support/v7/a/d;

.field private proceedButton:Landroid/widget/Button;

.field private final rank:Lcm/aptoide/pt/model/v7/Malware$Rank;

.field private trustedAppButton:Landroid/widget/Button;

.field private final trustedVersionAvailable:Z


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/model/v7/Malware$Rank;ZLandroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean p2, p0, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;->trustedVersionAvailable:Z

    .line 39
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;->rank:Lcm/aptoide/pt/model/v7/Malware$Rank;

    .line 41
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$layout;->dialog_install_warning:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 42
    new-instance v2, Landroid/support/v7/a/d$a;

    invoke-direct {v2, p3}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {v2, v1}, Landroid/support/v7/a/d$a;->b(Landroid/view/View;)Landroid/support/v7/a/d$a;

    .line 45
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->dialog_install_warning_proceed_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;->proceedButton:Landroid/widget/Button;

    .line 46
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;->proceedButton:Landroid/widget/Button;

    new-instance v3, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog$ViewOnClickListenerComposite;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;->onDestroy()Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-direct {v3, p4, v4}, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog$ViewOnClickListenerComposite;-><init>(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->dialog_install_warning_trusted_app_button:I

    .line 49
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;->trustedAppButton:Landroid/widget/Button;

    .line 50
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;->trustedAppButton:Landroid/widget/Button;

    new-instance v3, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog$ViewOnClickListenerComposite;

    .line 51
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;->onDestroy()Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-direct {v3, p5, v4}, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog$ViewOnClickListenerComposite;-><init>(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-direct {p0, v1}, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;->setRank(Landroid/view/View;)V

    .line 54
    invoke-direct {p0, v1}, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;->setTextBadges(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;->setTrustedAppButton(Landroid/view/View;)V

    .line 57
    invoke-virtual {v2}, Landroid/support/v7/a/d$a;->b()Landroid/support/v7/a/d;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;->dialog:Landroid/support/v7/a/d;

    .line 58
    return-void
.end method

.method private setRank(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 72
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->dialog_install_warning_rank_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 73
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;->rank:Lcm/aptoide/pt/model/v7/Malware$Rank;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;->rank:Lcm/aptoide/pt/model/v7/Malware$Rank;

    sget-object v2, Lcm/aptoide/pt/model/v7/Malware$Rank;->UNKNOWN:Lcm/aptoide/pt/model/v7/Malware$Rank;

    if-ne v1, v2, :cond_2

    .line 74
    :cond_0
    sget v1, Lcm/aptoide/pt/v8engine/R$string;->unknown:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 75
    sget v1, Lcm/aptoide/pt/v8engine/R$drawable;->ic_badge_unknown:I

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 83
    :cond_1
    :goto_0
    return-void

    .line 76
    :cond_2
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;->rank:Lcm/aptoide/pt/model/v7/Malware$Rank;

    sget-object v2, Lcm/aptoide/pt/model/v7/Malware$Rank;->WARNING:Lcm/aptoide/pt/model/v7/Malware$Rank;

    if-ne v1, v2, :cond_3

    .line 77
    sget v1, Lcm/aptoide/pt/v8engine/R$string;->warning:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 78
    sget v1, Lcm/aptoide/pt/v8engine/R$drawable;->ic_badge_warning:I

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 79
    :cond_3
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;->rank:Lcm/aptoide/pt/model/v7/Malware$Rank;

    sget-object v2, Lcm/aptoide/pt/model/v7/Malware$Rank;->CRITICAL:Lcm/aptoide/pt/model/v7/Malware$Rank;

    if-ne v1, v2, :cond_1

    .line 80
    sget v1, Lcm/aptoide/pt/v8engine/R$string;->critical:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 81
    sget v1, Lcm/aptoide/pt/v8engine/R$drawable;->ic_badge_critical:I

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method private setTextBadges(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 88
    const-string v0, "[placeholder]"

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->dialog_install_warning_credibility_text:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "[placeholder]"

    aput-object v4, v2, v3

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 91
    const-string v1, "Aptoide"

    .line 92
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getMarketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 95
    const-string v2, "[placeholder]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 96
    new-instance v2, Landroid/text/style/ImageSpan;

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcm/aptoide/pt/v8engine/R$drawable;->ic_badge_trusted:I

    invoke-direct {v2, v3, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    .line 99
    const-string v3, "[placeholder]"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 101
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->dialog_install_warning_credibility_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method


# virtual methods
.method public getDialog()Landroid/support/v7/a/d;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;->dialog:Landroid/support/v7/a/d;

    return-object v0
.end method

.method synthetic lambda$onDestroy$0(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;->proceedButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;->trustedAppButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iput-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;->proceedButton:Landroid/widget/Button;

    .line 65
    iput-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;->trustedAppButton:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;->dialog:Landroid/support/v7/a/d;

    invoke-virtual {v0}, Landroid/support/v7/a/d;->dismiss()V

    .line 67
    iput-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;->dialog:Landroid/support/v7/a/d;

    .line 68
    return-void
.end method

.method public onDestroy()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 61
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method public setTrustedAppButton(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 108
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;->trustedVersionAvailable:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->dialog_install_warning_get_trusted_version_button:I

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->dialog_install_warning_trusted_version_button:I

    .line 112
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 120
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 122
    new-instance v4, Landroid/text/SpannableString;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 123
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int v1, v2, v3

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x21

    invoke-interface {v4, v0, v2, v1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 125
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/InstallWarningDialog;->trustedAppButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 126
    return-void

    .line 114
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->dialog_install_warning_search_for_trusted_app_button:I

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->dialog_install_warning_trusted_app_button:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
