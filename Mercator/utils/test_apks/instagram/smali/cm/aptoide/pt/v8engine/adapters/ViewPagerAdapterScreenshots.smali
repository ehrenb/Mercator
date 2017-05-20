.class public Lcm/aptoide/pt/v8engine/adapters/ViewPagerAdapterScreenshots;
.super Landroid/support/v4/view/z;
.source "ViewPagerAdapterScreenshots.java"


# instance fields
.field private final uris:Ljava/util/ArrayList;
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
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/view/z;-><init>()V

    .line 27
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/adapters/ViewPagerAdapterScreenshots;->uris:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method private getPlaceholder(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 53
    sget v0, Lcm/aptoide/pt/v8engine/R$drawable;->placeholder_144x240:I

    .line 57
    :goto_0
    return v0

    .line 55
    :cond_0
    sget v0, Lcm/aptoide/pt/v8engine/R$drawable;->placeholder_256x160:I

    goto :goto_0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 61
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 62
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/adapters/ViewPagerAdapterScreenshots;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 38
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$layout;->row_item_screenshots_big:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 40
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->screenshot_image_big:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 42
    invoke-static {v2}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v4

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/adapters/ViewPagerAdapterScreenshots;->uris:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcm/aptoide/pt/v8engine/adapters/ViewPagerAdapterScreenshots;->getPlaceholder(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v4, v1, v2, v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;ILandroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 44
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    return-object v3
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
