.class final Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;
.super Ljava/lang/Object;
.source "AppViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppViewHeader"
.end annotation


# static fields
.field private static final BADGE_DIALOG_TAG:Ljava/lang/String; = "badgeDialog"


# instance fields
.field private final animationsEnabled:Z

.field private final appBarLayout:Landroid/support/design/widget/AppBarLayout;

.field private final appIcon:Landroid/widget/ImageView;

.field private final badge:Landroid/widget/ImageView;

.field private final badgeText:Landroid/widget/TextView;

.field private final collapsingToolbar:Landroid/support/design/widget/CollapsingToolbarLayout;

.field private final downloadsCount:Landroid/widget/TextView;

.field private final downloadsCountInStore:Landroid/widget/TextView;

.field private final featuredGraphic:Landroid/widget/ImageView;

.field private final fileSize:Landroid/widget/TextView;

.field final synthetic this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 804
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getAnimationsEnabledStatus()Z

    move-result v0

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->animationsEnabled:Z

    .line 807
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->app_bar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    .line 808
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->collapsing_toolbar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CollapsingToolbarLayout;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->collapsingToolbar:Landroid/support/design/widget/CollapsingToolbarLayout;

    .line 809
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->app_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->appIcon:Landroid/widget/ImageView;

    .line 810
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->featured_graphic:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->featuredGraphic:Landroid/widget/ImageView;

    .line 811
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->badge_img:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->badge:Landroid/widget/ImageView;

    .line 812
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->badge_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->badgeText:Landroid/widget/TextView;

    .line 813
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->file_size:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->fileSize:Landroid/widget/TextView;

    .line 814
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->downloads_count_in_store:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->downloadsCountInStore:Landroid/widget/TextView;

    .line 815
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->downloads_count:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->downloadsCount:Landroid/widget/TextView;

    .line 816
    return-void
.end method

.method static synthetic access$000(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->badge:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public getAppBarLayout()Landroid/support/design/widget/AppBarLayout;
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    return-object v0
.end method

.method public getAppIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->appIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getBadge()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->badge:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getBadgeText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->badgeText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCollapsingToolbar()Landroid/support/design/widget/CollapsingToolbarLayout;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->collapsingToolbar:Landroid/support/design/widget/CollapsingToolbarLayout;

    return-object v0
.end method

.method public getDownloadsCount()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->downloadsCount:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDownloadsCountInStore()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->downloadsCountInStore:Landroid/widget/TextView;

    return-object v0
.end method

.method public getFeaturedGraphic()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->featuredGraphic:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getFileSize()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->fileSize:Landroid/widget/TextView;

    return-object v0
.end method

.method synthetic lambda$setup$0(Lcm/aptoide/pt/model/v7/Malware;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 920
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Malware;->getRank()Lcm/aptoide/pt/model/v7/Malware$Rank;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->newInstance(Lcm/aptoide/pt/model/v7/Malware;Ljava/lang/String;Lcm/aptoide/pt/model/v7/Malware$Rank;)Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;

    .line 921
    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getFragmentManager()Landroid/support/v4/app/y;

    move-result-object v1

    const-string v2, "badgeDialog"

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;->show(Landroid/support/v4/app/y;Ljava/lang/String;)V

    .line 922
    return-void
.end method

.method public setup(Lcm/aptoide/pt/model/v7/GetApp;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 821
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v2

    .line 823
    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getGraphic()Ljava/lang/String;

    move-result-object v0

    .line 824
    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getMedia()Lcm/aptoide/pt/model/v7/GetAppMeta$Media;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$Media;->getScreenshots()Ljava/util/List;

    move-result-object v1

    .line 826
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;

    invoke-virtual {v3}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 827
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 828
    invoke-static {v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v0

    .line 829
    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getGraphic()Ljava/lang/String;

    move-result-object v1

    sget v4, Lcm/aptoide/pt/v8engine/R$drawable;->app_view_header_gradient:I

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->featuredGraphic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v4, v5}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;ILandroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 837
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getIcon()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 838
    invoke-static {v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v0

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getIcon()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v4}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 841
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->collapsingToolbar:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 842
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;

    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->storeTheme:Ljava/lang/String;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->access$200(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->get(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    move-result-object v0

    .line 843
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->collapsingToolbar:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;

    .line 844
    invoke-virtual {v4}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v4

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->getStoreHeader()I

    move-result v5

    invoke-static {v4, v5}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v4

    .line 843
    invoke-virtual {v1, v4}, Landroid/support/design/widget/CollapsingToolbarLayout;->setBackgroundColor(I)V

    .line 845
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->collapsingToolbar:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;

    .line 846
    invoke-virtual {v4}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v4

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->getStoreHeader()I

    move-result v0

    invoke-static {v4, v0}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v0

    .line 845
    invoke-virtual {v1, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrimColor(I)V

    .line 847
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;

    # getter for: Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->storeTheme:Ljava/lang/String;
    invoke-static {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->access$200(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->get(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/util/ThemeUtils;->setStatusBarThemeColor(Landroid/app/Activity;Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;)V

    .line 877
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->fileSize:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getSize()J

    move-result-wide v4

    invoke-static {v4, v5, v6}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->formatBytes(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->downloadsCountInStore:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStats()Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;->getDownloads()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v4, v5}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->withSuffix(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 880
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->downloadsCount:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStats()Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;->getPdownloads()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v4, v5}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->withSuffix(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 885
    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getMalware()Lcm/aptoide/pt/model/v7/Malware;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware;->getRank()Lcm/aptoide/pt/model/v7/Malware$Rank;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcm/aptoide/pt/model/v7/Malware$Rank;->UNKNOWN:Lcm/aptoide/pt/model/v7/Malware$Rank;

    .line 887
    :goto_1
    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$2;->$SwitchMap$cm$aptoide$pt$model$v7$Malware$Rank:[I

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware$Rank;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 905
    sget v1, Lcm/aptoide/pt/v8engine/R$drawable;->ic_badge_unknown:I

    .line 906
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->unknown:I

    .line 910
    :goto_2
    invoke-static {v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v3

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->badge:Landroid/widget/ImageView;

    invoke-virtual {v3, v1, v4}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(ILandroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 911
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->badgeText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 913
    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 914
    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getMalware()Lcm/aptoide/pt/model/v7/Malware;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Malware;->getRank()Lcm/aptoide/pt/model/v7/Malware$Rank;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Malware$Rank;->name()Ljava/lang/String;

    move-result-object v1

    .line 913
    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/analytics/Analytics$ViewedApplication;->view(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 916
    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getDeveloper()Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getMalware()Lcm/aptoide/pt/model/v7/Malware;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Malware;->getRank()Lcm/aptoide/pt/model/v7/Malware$Rank;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Malware$Rank;->name()Ljava/lang/String;

    move-result-object v3

    .line 915
    invoke-static {v0, v1, v3}, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppViewViewedFrom;->appViewOpenFrom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getMalware()Lcm/aptoide/pt/model/v7/Malware;

    move-result-object v0

    .line 919
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->badge:Landroid/widget/ImageView;

    invoke-static {p0, v0, v2}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;Lcm/aptoide/pt/model/v7/Malware;Lcm/aptoide/pt/model/v7/GetAppMeta$App;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 923
    return-void

    .line 830
    :cond_2
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 831
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/GetAppMeta$Media$Screenshot;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Media$Screenshot;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 830
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 832
    invoke-static {v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v4

    .line 833
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/GetAppMeta$Media$Screenshot;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Media$Screenshot;->getUrl()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$drawable;->app_view_header_gradient:I

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->featuredGraphic:Landroid/widget/ImageView;

    invoke-virtual {v4, v0, v1, v5}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;ILandroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    goto/16 :goto_0

    .line 886
    :cond_3
    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getMalware()Lcm/aptoide/pt/model/v7/Malware;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware;->getRank()Lcm/aptoide/pt/model/v7/Malware$Rank;

    move-result-object v0

    goto/16 :goto_1

    .line 889
    :pswitch_0
    sget v1, Lcm/aptoide/pt/v8engine/R$drawable;->ic_badge_trusted:I

    .line 890
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->appview_header_trusted_text:I

    goto/16 :goto_2

    .line 894
    :pswitch_1
    sget v1, Lcm/aptoide/pt/v8engine/R$drawable;->ic_badge_warning:I

    .line 895
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->warning:I

    goto/16 :goto_2

    .line 899
    :pswitch_2
    sget v1, Lcm/aptoide/pt/v8engine/R$drawable;->ic_badge_critical:I

    .line 900
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->critical:I

    goto/16 :goto_2

    .line 887
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
