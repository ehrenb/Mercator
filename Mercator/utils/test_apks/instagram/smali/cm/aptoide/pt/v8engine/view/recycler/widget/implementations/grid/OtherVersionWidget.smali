.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "OtherVersionWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcm/aptoide/pt/v8engine/view/recycler/widget/Displayables;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/OtherVersionDisplayable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/OtherVersionDisplayable;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final DATE_TIME_U:Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;

.field private static final DEFAULT_LOCALE:Ljava/util/Locale;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private appId:J

.field private date:Landroid/widget/TextView;

.field private downloads:Landroid/widget/TextView;

.field private followers:Landroid/widget/TextView;

.field private packageName:Ljava/lang/String;

.field private storeIcon:Landroid/widget/ImageView;

.field private storeName:Ljava/lang/String;

.field private storeNameView:Landroid/widget/TextView;

.field private trustedBadge:Landroid/widget/ImageView;

.field private version:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->TAG:Ljava/lang/String;

    .line 27
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->DEFAULT_LOCALE:Ljava/util/Locale;

    .line 28
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->getInstance()Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->DATE_TIME_U:Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method private setBadge(Lcm/aptoide/pt/model/v7/listapp/App;)V
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/File;->getMalware()Lcm/aptoide/pt/model/v7/Malware;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware;->getRank()Lcm/aptoide/pt/model/v7/Malware$Rank;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcm/aptoide/pt/model/v7/Malware$Rank;->UNKNOWN:Lcm/aptoide/pt/model/v7/Malware$Rank;

    .line 116
    :goto_0
    sget-object v1, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget$1;->$SwitchMap$cm$aptoide$pt$model$v7$Malware$Rank:[I

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware$Rank;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 131
    const/4 v0, 0x0

    .line 139
    :goto_1
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->trustedBadge:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    return-void

    .line 115
    :cond_0
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/File;->getMalware()Lcm/aptoide/pt/model/v7/Malware;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Malware;->getRank()Lcm/aptoide/pt/model/v7/Malware$Rank;

    move-result-object v0

    goto :goto_0

    .line 118
    :pswitch_0
    sget v0, Lcm/aptoide/pt/v8engine/R$drawable;->ic_badge_trusted:I

    goto :goto_1

    .line 122
    :pswitch_1
    sget v0, Lcm/aptoide/pt/v8engine/R$drawable;->ic_badge_warning:I

    goto :goto_1

    .line 126
    :pswitch_2
    sget v0, Lcm/aptoide/pt/v8engine/R$drawable;->ic_badge_critical:I

    goto :goto_1

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setItemBackgroundColor(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v3, 0x17

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 94
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->getLayoutPosition()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 95
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_0

    .line 96
    sget v2, Lcm/aptoide/pt/v8engine/R$color;->light_custom_gray:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 108
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 109
    return-void

    .line 98
    :cond_0
    sget v0, Lcm/aptoide/pt/v8engine/R$color;->light_custom_gray:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 101
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_2

    .line 102
    sget v2, Lcm/aptoide/pt/v8engine/R$color;->white:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    goto :goto_0

    .line 104
    :cond_2
    sget v0, Lcm/aptoide/pt/v8engine/R$color;->white:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 52
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->version_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->version:Landroid/widget/TextView;

    .line 53
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->badge_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->trustedBadge:Landroid/widget/ImageView;

    .line 54
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->version_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->date:Landroid/widget/TextView;

    .line 55
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->downloads:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->downloads:Landroid/widget/TextView;

    .line 57
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->store_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->storeIcon:Landroid/widget/ImageView;

    .line 58
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->store_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->storeNameView:Landroid/widget/TextView;

    .line 59
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->store_followers:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->followers:Landroid/widget/TextView;

    .line 61
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/OtherVersionDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/OtherVersionDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/OtherVersionDisplayable;)V
    .locals 8

    .prologue
    .line 65
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->itemView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->setItemBackgroundColor(Landroid/view/View;)V

    .line 67
    :try_start_0
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/OtherVersionDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/listapp/App;

    .line 68
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->appId:J

    .line 69
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->storeName:Ljava/lang/String;

    .line 70
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->packageName:Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->version:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/listapp/File;->getVername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->setBadge(Lcm/aptoide/pt/model/v7/listapp/App;)V

    .line 74
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->date:Landroid/widget/TextView;

    sget-object v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->DATE_TIME_U:Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getModified()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->getTimeDiffString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->downloads:Landroid/widget/TextView;

    sget-object v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->DEFAULT_LOCALE:Ljava/util/Locale;

    .line 76
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v3

    sget v4, Lcm/aptoide/pt/v8engine/R$string;->other_versions_downloads_count_text:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/u;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 77
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getStats()Lcm/aptoide/pt/model/v7/listapp/App$Stats;

    move-result-object v6

    invoke-virtual {v6}, Lcm/aptoide/pt/model/v7/listapp/App$Stats;->getDownloads()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->withSuffix(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 75
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-static {v1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/store/Store;->getAvatar()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->storeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 80
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->storeNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->followers:Landroid/widget/TextView;

    sget-object v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->DEFAULT_LOCALE:Ljava/util/Locale;

    .line 82
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v3

    sget v4, Lcm/aptoide/pt/v8engine/R$string;->appview_followers_count_text:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/u;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 83
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getStats()Lcm/aptoide/pt/model/v7/store/Store$Stats;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store$Stats;->getSubscribers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 81
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 143
    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showing other version for app with id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->appId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    .line 145
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v1

    iget-wide v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->appId:J

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;->storeName:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newAppViewFragment(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 144
    invoke-interface {v0, v1}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 146
    return-void
.end method
