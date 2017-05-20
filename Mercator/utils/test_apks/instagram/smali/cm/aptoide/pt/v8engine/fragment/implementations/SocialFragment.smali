.class public Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment;
.super Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;
.source "SocialFragment.java"


# static fields
.field public static final PAGE_TITLE:Ljava/lang/String; = "Social Page Title"

.field public static final SOCIAL_URL:Ljava/lang/String; = "Social URL"


# instance fields
.field private pageTitle:Ljava/lang/String;

.field private socialUrl:Ljava/lang/String;

.field private socialWebview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment;)V
    .locals 0

    .prologue
    .line 18
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment;->finishLoading()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment;-><init>()V

    .line 28
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 29
    const-string v2, "Social URL"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v2, "Social Page Title"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment;->setArguments(Landroid/os/Bundle;)V

    .line 32
    return-object v0
.end method


# virtual methods
.method public bindViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->bindViews(Landroid/view/View;)V

    .line 75
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->social_fragment_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment;->socialWebview:Landroid/webkit/WebView;

    .line 76
    return-void
.end method

.method protected displayHomeUpAsEnabled()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public getContentViewId()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->social_fragment_layout:I

    return v0
.end method

.method protected getViewToShowAfterLoadingId()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->social_fragment_layout:I

    return v0
.end method

.method public load(ZZLandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment;->socialWebview:Landroid/webkit/WebView;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment;->socialUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public loadExtras(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 48
    const-string v0, "Social URL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment;->socialUrl:Ljava/lang/String;

    .line 49
    const-string v0, "Social Page Title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment;->pageTitle:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 80
    sget v0, Lcm/aptoide/pt/v8engine/R$menu;->menu_empty:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 81
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 84
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 85
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->onBackPressed()V

    .line 87
    const/4 v0, 0x1

    .line 89
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public setupToolbarDetails(Landroid/support/v7/widget/Toolbar;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment;->pageTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method public setupViews()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 53
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderToolbarFragment;->setupViews()V

    .line 54
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment;->socialWebview:Landroid/webkit/WebView;

    new-instance v1, Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment$1;

    invoke-direct {v1, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment$1;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 56
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment;->socialWebview:Landroid/webkit/WebView;

    new-instance v1, Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment$2;

    invoke-direct {v1, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment$2;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 61
    invoke-virtual {p0, v2}, Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment;->setHasOptionsMenu(Z)V

    .line 62
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment;->socialWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 63
    return-void
.end method
