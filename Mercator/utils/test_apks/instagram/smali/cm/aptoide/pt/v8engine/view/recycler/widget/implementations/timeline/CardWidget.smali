.class public abstract Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "CardWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;",
        ">",
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field shareButton:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method static synthetic lambda$bindView$1(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method static synthetic lambda$null$5(Lrx/j;Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->NO:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p0, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 103
    invoke-virtual {p0}, Lrx/j;->onCompleted()V

    .line 104
    return-void
.end method

.method static synthetic lambda$null$7(Lrx/j;Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->NO:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p0, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {p0}, Lrx/j;->onCompleted()V

    .line 113
    return-void
.end method

.method static synthetic lambda$shareCard$2(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->openAccountManager(Landroid/content/Context;)V

    .line 77
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 50
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->social_share:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;->shareButton:Landroid/widget/TextView;

    .line 51
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;->compositeSubscription:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;->shareButton:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;)Lrx/b/b;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    .line 65
    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 70
    return-void
.end method

.method abstract getCardTypeName()Ljava/lang/String;
.end method

.method protected knockWithSixpackCredentials(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 136
    :cond_0
    const-string v0, "sixpack"

    const-string v1, "aFQiO7ZED16sFVAFYnYp2yLVZad3Obc"

    invoke-static {v0, v1}, Lokhttp3/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    .line 140
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    const-string v3, "authorization"

    invoke-virtual {v2, v3, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 142
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$1;

    invoke-direct {v1, p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$1;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    goto :goto_0
.end method

.method synthetic lambda$bindView$0(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;->shareCard(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;)V

    .line 67
    return-void
.end method

.method synthetic lambda$null$4(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;Lrx/j;Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {p2}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->getPrivacyResult()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;->share(Landroid/content/Context;Z)V

    .line 99
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->YES:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p3, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p3}, Lrx/j;->onCompleted()V

    .line 101
    return-void
.end method

.method synthetic lambda$null$6(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;Lrx/j;Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {p2}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->getPrivacyResult()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;->share(Landroid/content/Context;Z)V

    .line 108
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->YES:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p3, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 109
    invoke-virtual {p3}, Lrx/j;->onCompleted()V

    .line 110
    return-void
.end method

.method synthetic lambda$shareCard$3(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    const-class v2, Lcm/aptoide/accountmanager/CreateStoreActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/u;->startActivity(Landroid/content/Intent;)V

    .line 88
    return-void
.end method

.method synthetic lambda$shareCard$8(Landroid/support/v7/a/d$a;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;Lrx/j;)V
    .locals 3

    .prologue
    const/high16 v2, 0x1040000

    .line 96
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getUserAccessConfirmed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->share:I

    invoke-static {p0, p2, p3, p4}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;Lrx/j;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/a/d$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v0

    invoke-static {p4}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$8;->lambdaFactory$(Lrx/j;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v2, v1}, Landroid/support/v7/a/d$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    .line 115
    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/a/d$a;->c()Landroid/support/v7/a/d;

    .line 116
    return-void

    .line 106
    :cond_0
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->continue_option:I

    invoke-static {p0, p2, p3, p4}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$9;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;Lrx/j;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/a/d$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v0

    invoke-static {p4}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$10;->lambdaFactory$(Lrx/j;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v2, v1}, Landroid/support/v7/a/d$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    goto :goto_0
.end method

.method synthetic lambda$shareCard$9(Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)V
    .locals 2

    .prologue
    .line 117
    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$2;->$SwitchMap$cm$aptoide$pt$utils$GenericDialogs$EResponse:[I

    invoke-virtual {p1}, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_0
    :pswitch_0
    return-void

    .line 119
    :pswitch_1
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->social_timeline_share_dialog_title:I

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/app/Activity;I)V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setCardViewMargin(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;Landroid/support/v7/widget/CardView;)V
    .locals 5

    .prologue
    const/4 v1, -0x2

    .line 159
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 162
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    .line 163
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/u;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 162
    invoke-virtual {p1, v1, v2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;->getMarginWidth(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    .line 164
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v3

    .line 165
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/u;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    .line 164
    invoke-virtual {p1, v3, v4}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;->getMarginWidth(Landroid/content/Context;I)I

    move-result v3

    const/16 v4, 0x1e

    .line 162
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 166
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/CardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    return-void
.end method

.method shareCard(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->you_need_to_be_logged_in:I

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->login:I

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$3;->lambdaFactory$()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/app/Activity;IILandroid/view/View$OnClickListener;)V

    .line 127
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserData()Lcm/aptoide/accountmanager/util/UserCompleteData;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserRepo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->PUBLIC:Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;

    .line 82
    invoke-virtual {v0}, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getUserAccess()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->private_profile_create_store:I

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->create_store_create:I

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/app/Activity;IILandroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 92
    :cond_1
    new-instance v0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;

    invoke-direct {v0, p1}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V

    .line 93
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->getPreviewDialogBuilder(Landroid/content/Context;)Landroid/support/v7/a/d$a;

    move-result-object v1

    .line 95
    invoke-static {p0, v1, p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;Landroid/support/v7/a/d$a;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;)Lrx/d$a;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    .line 116
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;)Lrx/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    goto :goto_0
.end method
