.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "OfficialAppWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/OfficialAppDisplayable;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private appDownloads:Landroid/widget/TextView;

.field private appImage:Landroid/widget/ImageView;

.field private appName:Landroid/widget/TextView;

.field private appRating:Landroid/widget/RatingBar;

.field private appSize:Landroid/widget/TextView;

.field private appVersion:Landroid/widget/TextView;

.field private installButton:Landroid/widget/Button;

.field private installMessage:Landroid/widget/TextView;

.field private verticalSeparator:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 50
    return-void
.end method

.method private hideOfficialAppMessage()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 151
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;->installMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;->verticalSeparator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    return-void
.end method

.method private isAppInstalled(Lcm/aptoide/pt/model/v7/GetApp;)Z
    .locals 2

    .prologue
    .line 146
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getInstalledRepository()Lcm/aptoide/pt/v8engine/repository/InstalledRepository;

    move-result-object v0

    .line 147
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/repository/InstalledRepository;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$bindView$1(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 142
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 53
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->app_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;->appImage:Landroid/widget/ImageView;

    .line 54
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->app_install_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;->installButton:Landroid/widget/Button;

    .line 55
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->install_message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;->installMessage:Landroid/widget/TextView;

    .line 56
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->app_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;->appName:Landroid/widget/TextView;

    .line 57
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->vertical_separator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;->verticalSeparator:Landroid/view/View;

    .line 58
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->app_rating:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;->appRating:Landroid/widget/RatingBar;

    .line 59
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->app_downloads:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;->appDownloads:Landroid/widget/TextView;

    .line 60
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->app_version:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;->appVersion:Landroid/widget/TextView;

    .line 61
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->app_size:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;->appSize:Landroid/widget/TextView;

    .line 62
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/OfficialAppDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/OfficialAppDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/OfficialAppDisplayable;)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 66
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v2

    .line 67
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/OfficialAppDisplayable;->getMessageGetApp()Landroid/util/Pair;

    move-result-object v3

    .line 68
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcm/aptoide/pt/model/v7/GetApp;

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;->isAppInstalled(Lcm/aptoide/pt/model/v7/GetApp;)Z

    move-result v4

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 72
    invoke-virtual {v2}, Landroid/support/v4/app/u;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$color;->default_color:I

    invoke-virtual {v2}, Landroid/support/v4/app/u;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    move v1, v0

    .line 77
    :goto_0
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcm/aptoide/pt/model/v7/GetApp;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v5

    .line 78
    invoke-virtual {v5}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getName()Ljava/lang/String;

    move-result-object v6

    .line 80
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 83
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/util/Translator;->translateToMultiple(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 84
    if-eqz v7, :cond_2

    array-length v0, v7

    const/4 v8, 0x4

    if-ne v0, v8, :cond_2

    .line 85
    new-instance v3, Landroid/text/SpannableString;

    if-eqz v4, :cond_1

    const/4 v0, 0x3

    aget-object v0, v7, v0

    :goto_1
    new-array v8, v11, [Ljava/lang/Object;

    aput-object v6, v8, v10

    .line 86
    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 87
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/16 v9, 0x11

    invoke-virtual {v3, v0, v10, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 89
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 90
    aget-object v8, v7, v10

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 91
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 92
    aget-object v3, v7, v11

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 93
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;->installMessage:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :goto_2
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;->appRating:Landroid/widget/RatingBar;

    invoke-virtual {v5}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStats()Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;->getRating()Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating;->getAvg()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 103
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;->appName:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;->appDownloads:Landroid/widget/TextView;

    sget v3, Lcm/aptoide/pt/v8engine/R$string;->downloads_count:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/u;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v6, v11, [Ljava/lang/Object;

    .line 105
    invoke-virtual {v5}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStats()Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;

    move-result-object v7

    invoke-virtual {v7}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;->getDownloads()I

    move-result v7

    int-to-long v8, v7

    invoke-static {v8, v9}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->withSuffix(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 104
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;->appVersion:Landroid/widget/TextView;

    sget v3, Lcm/aptoide/pt/v8engine/R$string;->version_number:I

    .line 108
    invoke-virtual {v2, v3}, Landroid/support/v4/app/u;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v7

    invoke-virtual {v7}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getVername()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;->appSize:Landroid/widget/TextView;

    sget v3, Lcm/aptoide/pt/v8engine/R$string;->app_size:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/u;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v6, v11, [Ljava/lang/Object;

    .line 111
    invoke-virtual {v5}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v7

    invoke-virtual {v7}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getFilesize()J

    move-result-wide v8

    invoke-static {v8, v9, v10}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->formatBytes(JZ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 110
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-static {v2}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v0

    invoke-virtual {v5}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getIcon()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;->appImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3, v6}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_4

    .line 119
    sget v0, Lcm/aptoide/pt/v8engine/R$drawable;->dialog_bg_2:I

    invoke-virtual {v2, v0}, Landroid/support/v4/app/u;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 120
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 121
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;->installButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 128
    :goto_3
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;->installButton:Landroid/widget/Button;

    if-eqz v4, :cond_5

    sget v0, Lcm/aptoide/pt/v8engine/R$string;->open:I

    :goto_4
    invoke-virtual {v2, v0}, Landroid/support/v4/app/u;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;->compositeSubscription:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;->installButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0, v4, v5}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;ZLcm/aptoide/pt/model/v7/GetAppMeta$App;)Lrx/b/b;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 143
    return-void

    .line 74
    :cond_0
    invoke-virtual {v2}, Landroid/support/v4/app/u;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$color;->default_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    move v1, v0

    goto/16 :goto_0

    .line 85
    :cond_1
    const/4 v0, 0x2

    aget-object v0, v7, v0

    goto/16 :goto_1

    .line 95
    :cond_2
    iget-object v7, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;->installMessage:Landroid/widget/TextView;

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 98
    :cond_3
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;->hideOfficialAppMessage()V

    goto/16 :goto_2

    .line 123
    :cond_4
    invoke-virtual {v2}, Landroid/support/v4/app/u;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcm/aptoide/pt/v8engine/R$drawable;->dialog_bg_2:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 124
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 125
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;->installButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 128
    :cond_5
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->install:I

    goto :goto_4
.end method

.method synthetic lambda$bindView$0(ZLcm/aptoide/pt/model/v7/GetAppMeta$App;Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 131
    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->openApp(Ljava/lang/String;)V

    .line 140
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v0

    .line 136
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;->OPEN_AND_INSTALL:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    invoke-interface {v0, v1, v2}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newAppViewFragment(Ljava/lang/String;Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 138
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;->getNavigationManager()Lcm/aptoide/pt/navigation/NavigationManagerV4;

    move-result-object v1

    invoke-interface {v1, v0}, Lcm/aptoide/pt/navigation/NavigationManagerV4;->navigateTo(Landroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method
