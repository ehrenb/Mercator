.class public Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;
.super Lcm/aptoide/pt/v8engine/fragment/SupportV4BaseFragment;
.source "ScreenshotsViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;
    }
.end annotation


# instance fields
.field private btnCloseViewer:Landroid/view/View;

.field private currentItem:I

.field private screenshots:Landroid/support/v4/view/ViewPager;

.field private uris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/SupportV4BaseFragment;-><init>()V

    return-void
.end method

.method private hideSystemUI()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;->screenshots:Landroid/support/v4/view/ViewPager;

    const/16 v1, 0xf06

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setSystemUiVisibility(I)V

    .line 103
    return-void
.end method

.method public static newInstance(Ljava/util/ArrayList;I)Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;-><init>()V

    .line 34
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 35
    sget-object v2, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;->URIs:Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;

    invoke-virtual {v2}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 36
    sget-object v2, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;->POSITION:Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;

    invoke-virtual {v2}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 39
    return-object v0
.end method

.method private showSystemUI()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;->screenshots:Landroid/support/v4/view/ViewPager;

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setSystemUiVisibility(I)V

    .line 88
    return-void
.end method


# virtual methods
.method public bindViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 113
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->screen_shots_pager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;->screenshots:Landroid/support/v4/view/ViewPager;

    .line 114
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->btn_close_screenshots_window:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;->btnCloseViewer:Landroid/view/View;

    .line 115
    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .prologue
    .line 106
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->fragment_screenshots_viewer:I

    return v0
.end method

.method public loadExtras(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    if-nez p1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;->POSITION:Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;->currentItem:I

    .line 50
    :goto_0
    if-nez p1, :cond_1

    .line 51
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;->URIs:Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;->uris:Ljava/util/ArrayList;

    .line 55
    :goto_1
    return-void

    .line 47
    :cond_0
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;->POSITION:Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;->currentItem:I

    goto :goto_0

    .line 53
    :cond_1
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;->URIs:Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;->uris:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/SupportV4BaseFragment;->onPause()V

    .line 79
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;->showSystemUI()V

    .line 80
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/SupportV4BaseFragment;->onResume()V

    .line 74
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;->hideSystemUI()V

    .line 75
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/SupportV4BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 119
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;->POSITION:Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;->name()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;->currentItem:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;->URIs:Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$BundleArgs;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;->uris:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 121
    return-void
.end method

.method public setupViews()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;->uris:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;->screenshots:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcm/aptoide/pt/v8engine/adapters/ViewPagerAdapterScreenshots;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;->uris:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcm/aptoide/pt/v8engine/adapters/ViewPagerAdapterScreenshots;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/z;)V

    .line 61
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;->screenshots:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;->currentItem:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;->btnCloseViewer:Landroid/view/View;

    new-instance v1, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$1;

    invoke-direct {v1, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment$1;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method
