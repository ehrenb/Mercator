.class Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder;
.super Landroid/support/v7/widget/RecyclerView$v;
.source "ScreenshotsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScreenshotsViewHolder"
.end annotation


# instance fields
.field private media_layout:Landroid/widget/FrameLayout;

.field private play_button:Landroid/widget/ImageView;

.field private screenshot:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    .line 82
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder;->assignViews(Landroid/view/View;)V

    .line 83
    return-void
.end method

.method private getPlaceholder(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 135
    if-eqz p1, :cond_0

    const-string v0, "portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    sget v0, Lcm/aptoide/pt/v8engine/R$drawable;->placeholder_144x240:I

    .line 140
    :goto_0
    return v0

    .line 138
    :cond_0
    sget v0, Lcm/aptoide/pt/v8engine/R$drawable;->placeholder_256x160:I

    goto :goto_0
.end method

.method static synthetic lambda$bindViews$0(Lcm/aptoide/pt/model/v7/GetAppMeta$Media$Video;Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Media$Video;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 109
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 111
    return-void
.end method

.method static synthetic lambda$bindViews$1(Ljava/util/ArrayList;ILandroid/view/View;)V
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    .line 129
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newScreenshotsViewerFragment(Ljava/util/ArrayList;I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 128
    invoke-interface {v0, v1}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 130
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 86
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->screenshot_image_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder;->screenshot:Landroid/widget/ImageView;

    .line 87
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->play_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder;->play_button:Landroid/widget/ImageView;

    .line 88
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->media_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder;->media_layout:Landroid/widget/FrameLayout;

    .line 89
    return-void
.end method

.method public bindViews(Lcm/aptoide/pt/model/v7/GetAppMeta$Media$Screenshot;ILjava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/GetAppMeta$Media$Screenshot;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder;->media_layout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder;->play_button:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v0

    .line 123
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$Media$Screenshot;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$Media$Screenshot;->getOrientation()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$Media$Screenshot;->getOrientation()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder;->getPlaceholder(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder;->screenshot:Landroid/widget/ImageView;

    .line 123
    invoke-virtual {v0, v1, v2, v3, v4}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadScreenshotToThumb(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 126
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder;->itemView:Landroid/view/View;

    invoke-static {p3, p2}, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder$$Lambda$2;->lambdaFactory$(Ljava/util/ArrayList;I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-void
.end method

.method public bindViews(Lcm/aptoide/pt/model/v7/GetAppMeta$Media$Video;)V
    .locals 5

    .prologue
    .line 93
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 95
    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    .line 96
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$Media$Video;->getThumbnail()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcm/aptoide/pt/v8engine/R$drawable;->placeholder_300x300:I

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder;->screenshot:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3, v4}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;ILandroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 98
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 99
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder;->media_layout:Landroid/widget/FrameLayout;

    .line 100
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcm/aptoide/pt/v8engine/R$color;->overlay_black:I

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 99
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 105
    :goto_0
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder;->play_button:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetAppMeta$Media$Video;Landroid/content/Context;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter$ScreenshotsViewHolder;->media_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcm/aptoide/pt/v8engine/R$color;->overlay_black:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
