.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "ActiveDownloadWidget.java"


# annotations
.annotation runtime Lcm/aptoide/pt/v8engine/view/recycler/widget/Displayables;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadDisplayable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadDisplayable;",
        ">;"
    }
.end annotation


# instance fields
.field private appIcon:Landroid/widget/ImageView;

.field private appName:Landroid/widget/TextView;

.field private downloadProgressTv:Landroid/widget/TextView;

.field private downloadSpeedTv:Landroid/widget/TextView;

.field private pauseCancelButton:Landroid/widget/ImageView;

.field private progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 35
    return-void
.end method

.method static synthetic lambda$bindView$1(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$bindView$2(Lcm/aptoide/pt/database/realm/Download;)Lcm/aptoide/pt/database/realm/Download;
    .locals 0

    .prologue
    .line 54
    return-object p0
.end method

.method static synthetic lambda$bindView$4(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    return-void
.end method

.method private updateUi(Lcm/aptoide/pt/database/realm/Download;)Ljava/lang/Void;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 61
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;->appName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v0

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getIcon()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 65
    :cond_0
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 66
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 71
    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;->downloadProgressTv:Landroid/widget/TextView;

    const-string v1, "%d%%"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getOverallProgress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;->downloadSpeedTv:Landroid/widget/TextView;

    .line 73
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getDownloadSpeed()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3, v4}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->formatBytesToBits(JZ)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 69
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getOverallProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 38
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->app_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;->appName:Landroid/widget/TextView;

    .line 39
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->speed:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;->downloadSpeedTv:Landroid/widget/TextView;

    .line 40
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;->downloadProgressTv:Landroid/widget/TextView;

    .line 41
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->downloading_progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;->progressBar:Landroid/widget/ProgressBar;

    .line 42
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->pause_cancel_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;->pauseCancelButton:Landroid/widget/ImageView;

    .line 43
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->app_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;->appIcon:Landroid/widget/ImageView;

    .line 44
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadDisplayable;)V
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;->compositeSubscription:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;->pauseCancelButton:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadDisplayable;)Lrx/b/b;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    .line 48
    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 51
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;->compositeSubscription:Lrx/j/b;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadDisplayable;->getDownloadObservable()Lrx/d;

    move-result-object v1

    .line 52
    invoke-static {}, Lrx/g/a;->c()Lrx/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lrx/d;->h()Lrx/d;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget$$Lambda$3;->lambdaFactory$()Lrx/b/e;

    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v1

    .line 55
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;)Lrx/b/b;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget$$Lambda$5;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    .line 56
    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 58
    return-void
.end method

.method synthetic lambda$bindView$0(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadDisplayable;Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadDisplayable;->pauseInstall(Landroid/content/Context;)V

    return-void
.end method

.method synthetic lambda$bindView$3(Lcm/aptoide/pt/database/realm/Download;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;->updateUi(Lcm/aptoide/pt/database/realm/Download;)Ljava/lang/Void;

    return-void
.end method
