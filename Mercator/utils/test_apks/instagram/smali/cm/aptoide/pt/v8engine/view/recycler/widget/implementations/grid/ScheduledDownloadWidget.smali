.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "ScheduledDownloadWidget.java"


# annotations
.annotation runtime Lcm/aptoide/pt/v8engine/view/recycler/widget/Displayables;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;",
        ">;"
    }
.end annotation


# instance fields
.field private appIcon:Landroid/widget/ImageView;

.field private appName:Landroid/widget/TextView;

.field private appVersion:Landroid/widget/TextView;

.field private isSelected:Landroid/widget/CheckBox;

.field private progressBarIsInstalling:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 43
    return-void
.end method

.method private isDownloading(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;)V
    .locals 4

    .prologue
    .line 71
    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getInstance()Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->initDownloadService(Landroid/content/Context;)V

    .line 73
    new-instance v1, Lcm/aptoide/pt/v8engine/install/InstallerFactory;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/install/InstallerFactory;-><init>()V

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcm/aptoide/pt/v8engine/install/InstallerFactory;->create(Landroid/content/Context;I)Lcm/aptoide/pt/v8engine/install/Installer;

    move-result-object v1

    .line 74
    new-instance v2, Lcm/aptoide/pt/v8engine/InstallManager;

    invoke-direct {v2, v0, v1}, Lcm/aptoide/pt/v8engine/InstallManager;-><init>(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;Lcm/aptoide/pt/v8engine/install/Installer;)V

    .line 77
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Scheduled;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcm/aptoide/pt/v8engine/InstallManager;->getInstallation(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget;->compositeSubscription:Lrx/j/b;

    invoke-static {v2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallManager;)Lrx/b/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 82
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget;)Lrx/b/b;

    move-result-object v2

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget;)Lrx/b/b;

    move-result-object v3

    .line 83
    invoke-virtual {v0, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 79
    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 89
    return-void
.end method

.method static synthetic lambda$bindView$0(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0, p2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;->setSelected(Z)V

    .line 62
    return-void
.end method

.method static synthetic lambda$isDownloading$2(Lcm/aptoide/pt/v8engine/InstallManager;Lcm/aptoide/pt/v8engine/Progress;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/InstallManager;->isInstalling(Lcm/aptoide/pt/v8engine/Progress;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/InstallManager;->isPending(Lcm/aptoide/pt/v8engine/Progress;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 80
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 81
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 46
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->app_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget;->appIcon:Landroid/widget/ImageView;

    .line 47
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->app_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget;->appName:Landroid/widget/TextView;

    .line 48
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->app_version:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget;->appVersion:Landroid/widget/TextView;

    .line 49
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->is_selected:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget;->isSelected:Landroid/widget/CheckBox;

    .line 50
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->progress_bar_is_installing:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget;->progressBarIsInstalling:Landroid/widget/ProgressBar;

    .line 51
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;)V
    .locals 4

    .prologue
    .line 54
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Scheduled;

    .line 55
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    .line 56
    invoke-static {v1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Scheduled;->getIcon()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 57
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget;->appName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Scheduled;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget;->appVersion:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Scheduled;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget;->isSelected:Landroid/widget/CheckBox;

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 64
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget;->isSelected:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 65
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget;->itemView:Landroid/view/View;

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget;->isDownloading(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;)V

    .line 68
    return-void
.end method

.method synthetic lambda$bindView$1(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 65
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget;->isSelected:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget;->isSelected:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$isDownloading$3(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget;->updateUi(Z)V

    .line 85
    return-void
.end method

.method synthetic lambda$isDownloading$4(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget;->updateUi(Z)V

    .line 87
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    return-void
.end method

.method public updateUi(Z)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget;->isSelected:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 93
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget;->isSelected:Landroid/widget/CheckBox;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget;->progressBarIsInstalling:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget;->progressBarIsInstalling:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 99
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 93
    goto :goto_0

    :cond_3
    move v2, v1

    .line 97
    goto :goto_1
.end method
