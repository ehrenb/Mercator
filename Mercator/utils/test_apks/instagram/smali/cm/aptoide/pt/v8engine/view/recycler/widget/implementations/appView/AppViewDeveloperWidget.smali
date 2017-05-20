.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "AppViewDeveloperWidget.java"


# annotations
.annotation runtime Lcm/aptoide/pt/v8engine/view/recycler/widget/Displayables;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDeveloperDisplayable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDeveloperDisplayable;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private emailLabel:Landroid/widget/TextView;

.field private permissionsLabel:Landroid/widget/TextView;

.field private privacyPolicyLabel:Landroid/widget/TextView;

.field private websiteLabel:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 39
    return-void
.end method

.method static synthetic lambda$bindView$0(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 100
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getDeveloper()Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;->getWebsite()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 102
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getDeveloper()Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;->getWebsite()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 103
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 105
    :cond_0
    return-void
.end method

.method static synthetic lambda$bindView$1(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 115
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getDeveloper()Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mailto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 118
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getDeveloper()Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?subject="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Feedback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&body="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 122
    :cond_0
    return-void
.end method

.method static synthetic lambda$bindView$2(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 132
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getDeveloper()Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;->getPrivacy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 134
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getDeveloper()Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;->getPrivacy()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 135
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 137
    :cond_0
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 44
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->website_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget;->websiteLabel:Landroid/widget/TextView;

    .line 45
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->email_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget;->emailLabel:Landroid/widget/TextView;

    .line 46
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->privacy_policy_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget;->privacyPolicyLabel:Landroid/widget/TextView;

    .line 47
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->permissions_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget;->permissionsLabel:Landroid/widget/TextView;

    .line 48
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDeveloperDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDeveloperDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDeveloperDisplayable;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 51
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDeveloperDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/GetApp;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    .line 92
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getDeveloper()Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;->getWebsite()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget;->websiteLabel:Landroid/widget/TextView;

    sget v3, Lcm/aptoide/pt/v8engine/R$string;->developer_website:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    .line 94
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getDeveloper()Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;

    move-result-object v5

    invoke-virtual {v5}, Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;->getWebsite()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 93
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_0
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget;->websiteLabel:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/content/Context;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getDeveloper()Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 108
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget;->emailLabel:Landroid/widget/TextView;

    sget v3, Lcm/aptoide/pt/v8engine/R$string;->developer_email:I

    .line 109
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getDeveloper()Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;

    move-result-object v5

    invoke-virtual {v5}, Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;->getEmail()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :goto_1
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget;->emailLabel:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/content/Context;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getDeveloper()Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;->getPrivacy()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 125
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget;->privacyPolicyLabel:Landroid/widget/TextView;

    sget v3, Lcm/aptoide/pt/v8engine/R$string;->developer_privacy_policy:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    .line 126
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getDeveloper()Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;

    move-result-object v5

    invoke-virtual {v5}, Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;->getPrivacy()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 125
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :goto_2
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget;->privacyPolicyLabel:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/content/Context;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget;->permissionsLabel:Landroid/widget/TextView;

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDeveloperDisplayable;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    return-void

    .line 96
    :cond_0
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget;->websiteLabel:Landroid/widget/TextView;

    sget v3, Lcm/aptoide/pt/v8engine/R$string;->developer_website:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    sget v5, Lcm/aptoide/pt/v8engine/R$string;->not_available:I

    .line 97
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 96
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 111
    :cond_1
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget;->emailLabel:Landroid/widget/TextView;

    sget v3, Lcm/aptoide/pt/v8engine/R$string;->developer_email:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    sget v5, Lcm/aptoide/pt/v8engine/R$string;->not_available:I

    .line 112
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 111
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 128
    :cond_2
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget;->privacyPolicyLabel:Landroid/widget/TextView;

    sget v3, Lcm/aptoide/pt/v8engine/R$string;->developer_privacy_policy:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    sget v5, Lcm/aptoide/pt/v8engine/R$string;->not_available:I

    .line 129
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 128
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method synthetic lambda$bindView$3(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDeveloperDisplayable;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 140
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDeveloperDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/GetApp;

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;->newInstance(Lcm/aptoide/pt/model/v7/GetApp;)Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;

    move-result-object v0

    .line 141
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/u;->getSupportFragmentManager()Landroid/support/v4/app/y;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/v8engine/fragment/implementations/DialogPermissions;->show(Landroid/support/v4/app/y;Ljava/lang/String;)V

    .line 142
    return-void
.end method
