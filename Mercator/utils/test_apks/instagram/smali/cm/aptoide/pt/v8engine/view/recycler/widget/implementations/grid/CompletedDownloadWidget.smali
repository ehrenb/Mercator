.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "CompletedDownloadWidget.java"


# annotations
.annotation runtime Lcm/aptoide/pt/v8engine/view/recycler/widget/Displayables;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;",
        ">;"
    }
.end annotation


# instance fields
.field private appIcon:Landroid/widget/ImageView;

.field private appName:Landroid/widget/TextView;

.field private cancelDownloadButton:Landroid/widget/ImageView;

.field private defaultTextViewColor:Landroid/content/res/ColorStateList;

.field private resumeDownloadButton:Landroid/widget/ImageView;

.field private status:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 43
    return-void
.end method

.method static synthetic lambda$bindView$10(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;Landroid/support/v4/app/u;Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;->removeDownload(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic lambda$bindView$11(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 88
    return-void
.end method

.method static synthetic lambda$bindView$13(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$bindView$2(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;Landroid/support/v4/app/u;Ljava/lang/Void;)Lrx/d;
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;->downloadStatus()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget$$Lambda$13;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget$$Lambda$14;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;Landroid/support/v4/app/u;)Lrx/b/e;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$bindView$3(Lcm/aptoide/pt/v8engine/Progress;)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method static synthetic lambda$bindView$4(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 75
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic lambda$bindView$7(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;Landroid/support/v4/app/u;Ljava/lang/Void;)Lrx/d;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;->downloadStatus()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget$$Lambda$11;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget$$Lambda$12;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;Landroid/support/v4/app/u;)Lrx/b/e;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$bindView$8(Lcm/aptoide/pt/v8engine/Progress;)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method static synthetic lambda$bindView$9(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 83
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic lambda$null$0(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 70
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$null$1(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;Landroid/support/v4/app/u;Ljava/lang/Integer;)Lrx/d;
    .locals 1

    .prologue
    .line 72
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/actions/PermissionRequest;

    invoke-virtual {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;->installOrOpenDownload(Landroid/content/Context;Lcm/aptoide/pt/actions/PermissionRequest;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$5(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$null$6(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;Landroid/support/v4/app/u;Ljava/lang/Integer;)Lrx/d;
    .locals 1

    .prologue
    .line 80
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/actions/PermissionRequest;

    invoke-virtual {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;->resumeDownload(Landroid/content/Context;Lcm/aptoide/pt/actions/PermissionRequest;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private updateStatus(Lcm/aptoide/pt/database/realm/Download;)V
    .locals 3

    .prologue
    .line 104
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    .line 105
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 108
    sget v0, Lcm/aptoide/pt/v8engine/R$color;->red_700:I

    invoke-virtual {v1, v0}, Landroid/support/v4/app/u;->getColor(I)I

    move-result v0

    .line 112
    :goto_0
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;->status:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    :goto_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;->status:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Lcm/aptoide/pt/database/realm/Download;->getStatusName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    return-void

    .line 110
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/app/u;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcm/aptoide/pt/v8engine/R$color;->red_700:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;->status:Landroid/widget/TextView;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;->defaultTextViewColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1
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

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;->appIcon:Landroid/widget/ImageView;

    .line 47
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->app_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;->appName:Landroid/widget/TextView;

    .line 48
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->speed:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;->status:Landroid/widget/TextView;

    .line 49
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->resume_download:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;->resumeDownloadButton:Landroid/widget/ImageView;

    .line 50
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->pause_cancel_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;->cancelDownloadButton:Landroid/widget/ImageView;

    .line 51
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;)V
    .locals 5

    .prologue
    .line 54
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    .line 55
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;->getDownload()Lcm/aptoide/pt/database/realm/Download;

    move-result-object v1

    .line 56
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;->appName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcm/aptoide/pt/database/realm/Download;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v1}, Lcm/aptoide/pt/database/realm/Download;->getIcon()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v2

    invoke-virtual {v1}, Lcm/aptoide/pt/database/realm/Download;->getIcon()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 62
    :cond_0
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;->defaultTextViewColor:Landroid/content/res/ColorStateList;

    if-nez v2, :cond_1

    .line 63
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;->status:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;->defaultTextViewColor:Landroid/content/res/ColorStateList;

    .line 66
    :cond_1
    invoke-direct {p0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;->updateStatus(Lcm/aptoide/pt/database/realm/Download;)V

    .line 68
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;->compositeSubscription:Lrx/j/b;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;->itemView:Landroid/view/View;

    invoke-static {v2}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v2

    invoke-static {p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;Landroid/support/v4/app/u;)Lrx/b/e;

    move-result-object v3

    .line 69
    invoke-virtual {v2, v3}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Lrx/d;->k()Lrx/d;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget$$Lambda$3;->lambdaFactory$()Lrx/b/b;

    move-result-object v4

    .line 74
    invoke-virtual {v2, v3, v4}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Lrx/j/b;->a(Lrx/k;)V

    .line 77
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;->compositeSubscription:Lrx/j/b;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;->resumeDownloadButton:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v2

    invoke-static {p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;Landroid/support/v4/app/u;)Lrx/b/e;

    move-result-object v3

    .line 78
    invoke-virtual {v2, v3}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lrx/d;->k()Lrx/d;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget$$Lambda$5;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget$$Lambda$6;->lambdaFactory$()Lrx/b/b;

    move-result-object v4

    .line 82
    invoke-virtual {v2, v3, v4}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Lrx/j/b;->a(Lrx/k;)V

    .line 85
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;->compositeSubscription:Lrx/j/b;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;->cancelDownloadButton:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v2

    invoke-static {p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;Landroid/support/v4/app/u;)Lrx/b/b;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget$$Lambda$8;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    .line 86
    invoke-virtual {v2, v0, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 85
    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 90
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;->compositeSubscription:Lrx/j/b;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;->downloadStatus()Lrx/d;

    move-result-object v1

    .line 91
    invoke-static {}, Lrx/g/a;->c()Lrx/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v1

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 92
    invoke-virtual {v1, v2, v3, v4}, Lrx/d;->b(JLjava/util/concurrent/TimeUnit;)Lrx/d;

    move-result-object v1

    .line 93
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget$$Lambda$9;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;)Lrx/b/b;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget$$Lambda$10;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    .line 94
    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 101
    return-void
.end method

.method synthetic lambda$bindView$12(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 96
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;->resumeDownloadButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;->resumeDownloadButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
