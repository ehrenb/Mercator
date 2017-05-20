.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "UpdateWidget.java"


# annotations
.annotation runtime Lcm/aptoide/pt/v8engine/view/recycler/widget/Displayables;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;

.field private iconImageView:Landroid/widget/ImageView;

.field private imgUpdateLayout:Landroid/widget/ImageView;

.field private installedVernameTextView:Landroid/widget/TextView;

.field private labelTextView:Landroid/widget/TextView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private textUpdateLayout:Landroid/widget/TextView;

.field private updateButtonLayout:Landroid/view/ViewGroup;

.field private updateLayout:Landroid/widget/LinearLayout;

.field private updateRepository:Lcm/aptoide/pt/v8engine/repository/UpdateRepository;

.field private updateRowRelativeLayout:Landroid/view/View;

.field private updateVernameTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 67
    return-void
.end method

.method private getUpdateProgress(Lcm/aptoide/pt/v8engine/InstallManager;Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/v8engine/InstallManager;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/v8engine/Progress",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/InstallManager;->getInstallationsAsList()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$13;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$14;->lambdaFactory$(Ljava/lang/String;)Lrx/b/e;

    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private isDownloadingOrInstalling(Lcm/aptoide/pt/v8engine/Progress;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/v8engine/Progress",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 180
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 181
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$bindView$1(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 93
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic lambda$bindView$10(Lcm/aptoide/pt/v8engine/Progress;)V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method static synthetic lambda$bindView$11(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 133
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic lambda$bindView$14(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 154
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic lambda$bindView$3(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 104
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic lambda$bindView$8(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 128
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic lambda$getUpdateProgress$15(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 165
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$getUpdateProgress$16(Ljava/lang/String;Ljava/util/List;)Lrx/d;
    .locals 3

    .prologue
    .line 167
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/Progress;

    .line 168
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcm/aptoide/pt/database/realm/Download;

    .line 169
    invoke-virtual {v1}, Lcm/aptoide/pt/database/realm/Download;->getMd5()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic lambda$null$4(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 4

    .prologue
    .line 114
    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->TAG:Ljava/lang/String;

    const-string v1, "Update with package name %s was excluded"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 115
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$null$5(Landroid/support/v4/app/u;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 117
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->unknown_error:I

    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/app/Activity;I)V

    .line 118
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 119
    return-void
.end method

.method private showProgress(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 185
    if-eqz p1, :cond_0

    .line 186
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->textUpdateLayout:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->imgUpdateLayout:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 194
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->textUpdateLayout:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->imgUpdateLayout:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 70
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->updateRowRelativeLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->updateRowRelativeLayout:Landroid/view/View;

    .line 71
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->labelTextView:Landroid/widget/TextView;

    .line 72
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->iconImageView:Landroid/widget/ImageView;

    .line 73
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->app_installed_version:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->installedVernameTextView:Landroid/widget/TextView;

    .line 74
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->app_update_version:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->updateVernameTextView:Landroid/widget/TextView;

    .line 75
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->updateButtonLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->updateButtonLayout:Landroid/view/ViewGroup;

    .line 76
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->update_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->updateLayout:Landroid/widget/LinearLayout;

    .line 77
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->img_update_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->imgUpdateLayout:Landroid/widget/ImageView;

    .line 78
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->text_update_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->textUpdateLayout:Landroid/widget/TextView;

    .line 79
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->progress_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->progressBar:Landroid/widget/ProgressBar;

    .line 81
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getUpdateRepository()Lcm/aptoide/pt/v8engine/repository/UpdateRepository;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->updateRepository:Lcm/aptoide/pt/v8engine/repository/UpdateRepository;

    .line 82
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;)V
    .locals 6

    .prologue
    .line 85
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;

    .line 86
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 87
    const-class v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/InstalledAccessor;

    .line 89
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->compositeSubscription:Lrx/j/b;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->get(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    .line 91
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v3

    invoke-virtual {v0, v3}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;)Lrx/b/b;

    move-result-object v3

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v4

    .line 92
    invoke-virtual {v0, v3, v4}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 89
    invoke-virtual {v2, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 95
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->labelTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->updateVernameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getUpdateVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getIcon()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 100
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->compositeSubscription:Lrx/j/b;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->updateRowRelativeLayout:Landroid/view/View;

    invoke-static {v3}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v3

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;)Lrx/b/b;

    move-result-object v4

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$4;->lambdaFactory$()Lrx/b/b;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/j/b;->a(Lrx/k;)V

    .line 106
    invoke-static {p0, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;Landroid/support/v4/app/u;Ljava/lang/String;)Lrx/b/b;

    move-result-object v1

    .line 127
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->compositeSubscription:Lrx/j/b;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->updateRowRelativeLayout:Landroid/view/View;

    invoke-static {v3}, Lcom/c/a/b/c;->b(Landroid/view/View;)Lrx/d;

    move-result-object v3

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$6;->lambdaFactory$()Lrx/b/b;

    move-result-object v4

    .line 128
    invoke-virtual {v3, v1, v4}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    .line 127
    invoke-virtual {v2, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 129
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->compositeSubscription:Lrx/j/b;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->updateButtonLayout:Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v2

    invoke-static {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;Landroid/support/v4/app/u;)Lrx/b/e;

    move-result-object v0

    .line 130
    invoke-virtual {v2, v0}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lrx/d;->k()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$8;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$9;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    .line 132
    invoke-virtual {v0, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 129
    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 147
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getInstallManager()Lcm/aptoide/pt/v8engine/InstallManager;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getMd5()Ljava/lang/String;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->compositeSubscription:Lrx/j/b;

    .line 151
    invoke-direct {p0, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->getUpdateProgress(Lcm/aptoide/pt/v8engine/InstallManager;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$10;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;)Lrx/b/e;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$11;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$12;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    .line 153
    invoke-virtual {v0, v1, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 150
    invoke-virtual {v2, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 155
    return-void
.end method

.method synthetic lambda$bindView$0(Lcm/aptoide/pt/database/realm/Installed;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->installedVernameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Installed;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$bindView$12(Lcm/aptoide/pt/v8engine/Progress;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->isDownloadingOrInstalling(Lcm/aptoide/pt/v8engine/Progress;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$bindView$13(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->showProgress(Z)V

    return-void
.end method

.method synthetic lambda$bindView$2(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;Ljava/lang/Void;)V
    .locals 4

    .prologue
    .line 101
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v0

    .line 102
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getAppId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newAppViewFragment(JLjava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->getNavigationManager()Lcm/aptoide/pt/navigation/NavigationManagerV4;

    move-result-object v1

    invoke-interface {v1, v0}, Lcm/aptoide/pt/navigation/NavigationManagerV4;->navigateTo(Landroid/support/v4/app/Fragment;)V

    .line 104
    return-void
.end method

.method synthetic lambda$bindView$7(Landroid/support/v4/app/u;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 4

    .prologue
    .line 107
    new-instance v0, Landroid/support/v7/a/d$a;

    invoke-direct {v0, p1}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    .line 108
    sget v1, Lcm/aptoide/pt/v8engine/R$string;->ignore_update:I

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d$a;->a(I)Landroid/support/v7/a/d$a;

    move-result-object v1

    const/4 v2, 0x1

    .line 109
    invoke-virtual {v1, v2}, Landroid/support/v7/a/d$a;->a(Z)Landroid/support/v7/a/d$a;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->no:I

    const/4 v3, 0x0

    .line 110
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/a/d$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->yes:I

    invoke-static {p0, p2, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$15;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;Ljava/lang/String;Landroid/support/v4/app/u;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    .line 111
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/a/d$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    .line 124
    invoke-virtual {v0}, Landroid/support/v7/a/d$a;->b()Landroid/support/v7/a/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/d;->show()V

    .line 125
    return-void
.end method

.method synthetic lambda$bindView$9(Landroid/support/v4/app/u;Ljava/lang/Void;)Lrx/d;
    .locals 2

    .prologue
    .line 130
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;

    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/actions/PermissionRequest;

    invoke-virtual {v1, p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->downloadAndInstall(Landroid/content/Context;Lcm/aptoide/pt/actions/PermissionRequest;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$6(Ljava/lang/String;Landroid/support/v4/app/u;Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 112
    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    .line 113
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->compositeSubscription:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->updateRepository:Lcm/aptoide/pt/v8engine/repository/UpdateRepository;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->setExcluded(Ljava/lang/String;Z)Lrx/d;

    move-result-object v1

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$16;->lambdaFactory$(Ljava/lang/String;)Lrx/b/b;

    move-result-object v2

    invoke-static {p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$17;->lambdaFactory$(Landroid/support/v4/app/u;)Lrx/b/b;

    move-result-object v3

    .line 114
    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 121
    :cond_0
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    .line 122
    return-void
.end method
