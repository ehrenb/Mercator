.class public Lcm/aptoide/pt/imageloader/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final weakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcm/aptoide/pt/imageloader/ImageLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/imageloader/ImageLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcm/aptoide/pt/imageloader/ImageLoader;->weakContext:Ljava/lang/ref/WeakReference;

    .line 38
    return-void
.end method

.method public static cancel(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 50
    invoke-static {p0}, Lcom/bumptech/glide/g;->a(Landroid/view/View;)V

    .line 51
    return-void
.end method

.method public static cancel(Lcom/bumptech/glide/g/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/g/a",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p0}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/g/a;)V

    .line 60
    return-void
.end method

.method public static cancel(Lcom/bumptech/glide/g/b/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/g/b/k",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {p0}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/g/b/k;)V

    .line 69
    return-void
.end method

.method public static with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcm/aptoide/pt/imageloader/ImageLoader;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/imageloader/ImageLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public load(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lcm/aptoide/pt/imageloader/ImageLoader;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 284
    if-eqz v0, :cond_0

    .line 287
    :try_start_0
    invoke-static {v0}, Lcom/bumptech/glide/g;->b(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    .line 288
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Lcom/bumptech/glide/d;->h()Lcom/bumptech/glide/b;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    .line 290
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/b;->c(II)Lcom/bumptech/glide/g/a;

    move-result-object v0

    .line 291
    invoke-interface {v0}, Lcom/bumptech/glide/g/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 300
    :goto_0
    return-object v0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 300
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 294
    :catch_1
    move-exception v0

    .line 295
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1

    .line 298
    :cond_0
    sget-object v0, Lcm/aptoide/pt/imageloader/ImageLoader;->TAG:Ljava/lang/String;

    const-string v1, "::load() Context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public load(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 261
    if-nez p1, :cond_0

    move-object v0, v1

    .line 274
    :goto_0
    return-object v0

    .line 265
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/imageloader/ImageLoader;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 266
    if-eqz v0, :cond_2

    .line 267
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 268
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 270
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 272
    :cond_2
    sget-object v0, Lcm/aptoide/pt/imageloader/ImageLoader;->TAG:Ljava/lang/String;

    const-string v2, "::load() Context is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 274
    goto :goto_0
.end method

.method public load(ILandroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/g/b/k",
            "<",
            "Lcom/bumptech/glide/load/resource/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcm/aptoide/pt/imageloader/ImageLoader;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 212
    if-eqz v0, :cond_0

    .line 213
    invoke-static {v0}, Lcom/bumptech/glide/g;->b(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/Integer;)Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/d;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    move-result-object v0

    .line 217
    :goto_0
    return-object v0

    .line 215
    :cond_0
    sget-object v0, Lcm/aptoide/pt/imageloader/ImageLoader;->TAG:Ljava/lang/String;

    const-string v1, "::load() Context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Ljava/lang/String;ILandroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/g/b/k",
            "<",
            "Lcom/bumptech/glide/load/resource/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcm/aptoide/pt/imageloader/ImageLoader;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 236
    if-eqz v0, :cond_0

    .line 237
    invoke-static {v0}, Lcom/bumptech/glide/g;->b(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/d;->a(I)Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    move-result-object v0

    .line 241
    :goto_0
    return-object v0

    .line 239
    :cond_0
    sget-object v0, Lcm/aptoide/pt/imageloader/ImageLoader;->TAG:Ljava/lang/String;

    const-string v1, "::load() Context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/g/b/k",
            "<",
            "Lcom/bumptech/glide/load/resource/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcm/aptoide/pt/imageloader/ImageLoader;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 246
    if-eqz v0, :cond_0

    .line 247
    invoke-static {v0}, Lcom/bumptech/glide/g;->b(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->getNewImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/d;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    .line 249
    :cond_0
    sget-object v0, Lcm/aptoide/pt/imageloader/ImageLoader;->TAG:Ljava/lang/String;

    const-string v1, "::load() Context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcm/aptoide/pt/imageloader/ImageLoader;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 79
    if-eqz v0, :cond_0

    .line 82
    :try_start_0
    invoke-static {v0}, Lcom/bumptech/glide/g;->b(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/bumptech/glide/d;->h()Lcom/bumptech/glide/b;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    .line 85
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/b;->c(II)Lcom/bumptech/glide/g/a;

    move-result-object v0

    .line 86
    invoke-interface {v0}, Lcom/bumptech/glide/g/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    :goto_0
    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 95
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 89
    :catch_1
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1

    .line 93
    :cond_0
    sget-object v0, Lcm/aptoide/pt/imageloader/ImageLoader;->TAG:Ljava/lang/String;

    const-string v1, "::loadBitmap() Context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public loadImageToNotification(Lcom/bumptech/glide/g/b/g;Ljava/lang/String;)Lcom/bumptech/glide/g/b/g;
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcm/aptoide/pt/imageloader/ImageLoader;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 199
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/g;->b(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    .line 201
    invoke-static {p2}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->generateStringNotification(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lcom/bumptech/glide/d;->h()Lcom/bumptech/glide/b;

    move-result-object v0

    .line 203
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/b;->a(Lcom/bumptech/glide/g/b/k;)Lcom/bumptech/glide/g/b/k;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g/b/g;

    .line 207
    :goto_0
    return-object v0

    .line 205
    :cond_0
    sget-object v0, Lcm/aptoide/pt/imageloader/ImageLoader;->TAG:Ljava/lang/String;

    const-string v1, "::loadImageToNotification() Context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 207
    goto :goto_0
.end method

.method public loadScreenshotToThumb(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/g/b/k",
            "<",
            "Lcom/bumptech/glide/load/resource/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcm/aptoide/pt/imageloader/ImageLoader;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 223
    if-eqz v0, :cond_0

    .line 224
    invoke-static {v0}, Lcom/bumptech/glide/g;->b(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    .line 225
    invoke-static {p1, p2}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->screenshotToThumb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    .line 226
    invoke-virtual {v0, p3}, Lcom/bumptech/glide/d;->a(I)Lcom/bumptech/glide/c;

    move-result-object v0

    .line 227
    invoke-virtual {v0, p4}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    .line 229
    :cond_0
    sget-object v0, Lcm/aptoide/pt/imageloader/ImageLoader;->TAG:Ljava/lang/String;

    const-string v1, "::loadScreenshotToThumb() Context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadUsingCircleTransform(ILandroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/g/b/k",
            "<",
            "Lcom/bumptech/glide/load/resource/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lcm/aptoide/pt/imageloader/ImageLoader;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 305
    if-eqz v0, :cond_0

    .line 306
    invoke-static {v0}, Lcom/bumptech/glide/g;->b(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v1

    .line 307
    invoke-virtual {v1}, Lcom/bumptech/glide/j;->h()Lcom/bumptech/glide/d;

    move-result-object v1

    .line 308
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/d;->a(Ljava/lang/Object;)Lcom/bumptech/glide/c;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/bumptech/glide/load/resource/bitmap/d;

    const/4 v3, 0x0

    new-instance v4, Lcm/aptoide/pt/imageloader/CircleTransform;

    invoke-direct {v4, v0}, Lcm/aptoide/pt/imageloader/CircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 309
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/c;->a([Lcom/bumptech/glide/load/resource/bitmap/d;)Lcom/bumptech/glide/c;

    move-result-object v0

    .line 310
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    move-result-object v0

    .line 314
    :goto_0
    return-object v0

    .line 312
    :cond_0
    sget-object v0, Lcm/aptoide/pt/imageloader/ImageLoader;->TAG:Ljava/lang/String;

    const-string v1, "::loadUsingCircleTransform() Context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadUsingCircleTransform(Landroid/net/Uri;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/g/b/k",
            "<",
            "Lcom/bumptech/glide/load/resource/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadUsingCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    move-result-object v0

    return-object v0
.end method

.method public loadUsingCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/g/b/k",
            "<",
            "Lcom/bumptech/glide/load/resource/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcm/aptoide/pt/imageloader/ImageLoader;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 323
    if-eqz v0, :cond_0

    .line 324
    invoke-static {v0}, Lcom/bumptech/glide/g;->b(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/bumptech/glide/load/resource/bitmap/d;

    const/4 v3, 0x0

    new-instance v4, Lcm/aptoide/pt/imageloader/CircleTransform;

    invoke-direct {v4, v0}, Lcm/aptoide/pt/imageloader/CircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/d;->a([Lcom/bumptech/glide/load/resource/bitmap/d;)Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    move-result-object v0

    .line 328
    :goto_0
    return-object v0

    .line 326
    :cond_0
    sget-object v0, Lcm/aptoide/pt/imageloader/ImageLoader;->TAG:Ljava/lang/String;

    const-string v1, "::loadUsingCircleTransform() Context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadWithCircleTransform(Landroid/net/Uri;Landroid/widget/ImageView;Z)Lcom/bumptech/glide/g/b/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/widget/ImageView;",
            "Z)",
            "Lcom/bumptech/glide/g/b/k",
            "<",
            "Lcom/bumptech/glide/load/resource/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    iget-object v0, p0, Lcm/aptoide/pt/imageloader/ImageLoader;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 128
    if-eqz v0, :cond_2

    .line 129
    invoke-static {v0}, Lcom/bumptech/glide/g;->b(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v3

    .line 130
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v3

    new-array v4, v1, [Lcom/bumptech/glide/load/resource/bitmap/d;

    new-instance v5, Lcm/aptoide/pt/imageloader/CircleTransform;

    invoke-direct {v5, v0}, Lcm/aptoide/pt/imageloader/CircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v2

    .line 131
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/d;->a([Lcom/bumptech/glide/load/resource/bitmap/d;)Lcom/bumptech/glide/c;

    move-result-object v3

    if-nez p3, :cond_0

    move v0, v1

    .line 132
    :goto_0
    invoke-virtual {v3, v0}, Lcom/bumptech/glide/c;->a(Z)Lcom/bumptech/glide/c;

    move-result-object v1

    if-eqz p3, :cond_1

    sget-object v0, Lcom/bumptech/glide/load/b/b;->d:Lcom/bumptech/glide/load/b/b;

    .line 133
    :goto_1
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/load/b/b;)Lcom/bumptech/glide/c;

    move-result-object v0

    .line 134
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    move-result-object v0

    .line 138
    :goto_2
    return-object v0

    :cond_0
    move v0, v2

    .line 131
    goto :goto_0

    .line 132
    :cond_1
    sget-object v0, Lcom/bumptech/glide/load/b/b;->b:Lcom/bumptech/glide/load/b/b;

    goto :goto_1

    .line 136
    :cond_2
    sget-object v0, Lcm/aptoide/pt/imageloader/ImageLoader;->TAG:Ljava/lang/String;

    const-string v1, "::loadWithCircleTransform() Context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public loadWithCircleTransformAndPlaceHolder(Ljava/lang/String;Landroid/widget/ImageView;I)Lcom/bumptech/glide/g/b/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/widget/ImageView;",
            "I)",
            "Lcom/bumptech/glide/g/b/k",
            "<",
            "Lcom/bumptech/glide/load/resource/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcm/aptoide/pt/imageloader/ImageLoader;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 114
    if-eqz v0, :cond_0

    .line 115
    invoke-static {v0}, Lcom/bumptech/glide/g;->b(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v1

    .line 116
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/bumptech/glide/load/resource/bitmap/d;

    const/4 v3, 0x0

    new-instance v4, Lcm/aptoide/pt/imageloader/CircleTransform;

    invoke-direct {v4, v0}, Lcm/aptoide/pt/imageloader/CircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 117
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/d;->a([Lcom/bumptech/glide/load/resource/bitmap/d;)Lcom/bumptech/glide/c;

    move-result-object v0

    .line 118
    invoke-virtual {v0, p3}, Lcom/bumptech/glide/c;->a(I)Lcom/bumptech/glide/c;

    move-result-object v0

    .line 119
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    .line 121
    :cond_0
    sget-object v0, Lcm/aptoide/pt/imageloader/ImageLoader;->TAG:Ljava/lang/String;

    const-string v1, "::loadWithCircleTransformAndPlaceHolder() Context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadWithCircleTransformAndPlaceHolderAvatarSize(Ljava/lang/String;Landroid/widget/ImageView;I)Lcom/bumptech/glide/g/b/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/widget/ImageView;",
            "I)",
            "Lcom/bumptech/glide/g/b/k",
            "<",
            "Lcom/bumptech/glide/load/resource/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {p1}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->generateStringAvatar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithCircleTransformAndPlaceHolder(Ljava/lang/String;Landroid/widget/ImageView;I)Lcom/bumptech/glide/g/b/k;

    move-result-object v0

    return-object v0
.end method

.method public loadWithShadowCircleTransform(ILandroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/g/b/k",
            "<",
            "Lcom/bumptech/glide/load/resource/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcm/aptoide/pt/imageloader/ImageLoader;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 156
    if-eqz v0, :cond_0

    .line 157
    invoke-static {v0}, Lcom/bumptech/glide/g;->b(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v1

    .line 158
    invoke-virtual {v1}, Lcom/bumptech/glide/j;->h()Lcom/bumptech/glide/d;

    move-result-object v1

    .line 159
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/d;->a(Ljava/lang/Object;)Lcom/bumptech/glide/c;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/bumptech/glide/load/resource/bitmap/d;

    const/4 v3, 0x0

    new-instance v4, Lcm/aptoide/pt/imageloader/ShadowCircleTransformation;

    invoke-direct {v4, v0, p2}, Lcm/aptoide/pt/imageloader/ShadowCircleTransformation;-><init>(Landroid/content/Context;Landroid/view/View;)V

    aput-object v4, v2, v3

    .line 160
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/c;->a([Lcom/bumptech/glide/load/resource/bitmap/d;)Lcom/bumptech/glide/c;

    move-result-object v0

    .line 161
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    .line 163
    :cond_0
    sget-object v0, Lcm/aptoide/pt/imageloader/ImageLoader;->TAG:Ljava/lang/String;

    const-string v1, "::loadWithShadowCircleTransform() Context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadWithShadowCircleTransform(ILandroid/widget/ImageView;I)Lcom/bumptech/glide/g/b/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/widget/ImageView;",
            "I)",
            "Lcom/bumptech/glide/g/b/k",
            "<",
            "Lcom/bumptech/glide/load/resource/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcm/aptoide/pt/imageloader/ImageLoader;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 185
    if-eqz v0, :cond_0

    .line 186
    invoke-static {v0}, Lcom/bumptech/glide/g;->b(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Lcom/bumptech/glide/j;->h()Lcom/bumptech/glide/d;

    move-result-object v1

    .line 188
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/d;->a(Ljava/lang/Object;)Lcom/bumptech/glide/c;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/bumptech/glide/load/resource/bitmap/d;

    const/4 v3, 0x0

    new-instance v4, Lcm/aptoide/pt/imageloader/ShadowCircleTransformation;

    invoke-direct {v4, v0, p2, p3}, Lcm/aptoide/pt/imageloader/ShadowCircleTransformation;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    aput-object v4, v2, v3

    .line 189
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/c;->a([Lcom/bumptech/glide/load/resource/bitmap/d;)Lcom/bumptech/glide/c;

    move-result-object v0

    .line 190
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    move-result-object v0

    .line 194
    :goto_0
    return-object v0

    .line 192
    :cond_0
    sget-object v0, Lcm/aptoide/pt/imageloader/ImageLoader;->TAG:Ljava/lang/String;

    const-string v1, "::loadWithShadowCircleTransform() Context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/g/b/k",
            "<",
            "Lcom/bumptech/glide/load/resource/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcm/aptoide/pt/imageloader/ImageLoader;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 143
    if-eqz v0, :cond_0

    .line 144
    invoke-static {v0}, Lcom/bumptech/glide/g;->b(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v1

    .line 145
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/bumptech/glide/load/resource/bitmap/d;

    const/4 v3, 0x0

    new-instance v4, Lcm/aptoide/pt/imageloader/ShadowCircleTransformation;

    invoke-direct {v4, v0, p2}, Lcm/aptoide/pt/imageloader/ShadowCircleTransformation;-><init>(Landroid/content/Context;Landroid/view/View;)V

    aput-object v4, v2, v3

    .line 146
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/d;->a([Lcom/bumptech/glide/load/resource/bitmap/d;)Lcom/bumptech/glide/c;

    move-result-object v0

    .line 147
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    .line 149
    :cond_0
    sget-object v0, Lcm/aptoide/pt/imageloader/ImageLoader;->TAG:Ljava/lang/String;

    const-string v1, "::loadWithShadowCircleTransform() Context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;I)Lcom/bumptech/glide/g/b/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/widget/ImageView;",
            "I)",
            "Lcom/bumptech/glide/g/b/k",
            "<",
            "Lcom/bumptech/glide/load/resource/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcm/aptoide/pt/imageloader/ImageLoader;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 171
    if-eqz v0, :cond_0

    .line 172
    invoke-static {v0}, Lcom/bumptech/glide/g;->b(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v1

    .line 173
    invoke-static {p1}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->generateSizeStoreString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/bumptech/glide/load/resource/bitmap/d;

    const/4 v3, 0x0

    new-instance v4, Lcm/aptoide/pt/imageloader/ShadowCircleTransformation;

    invoke-direct {v4, v0, p2, p3}, Lcm/aptoide/pt/imageloader/ShadowCircleTransformation;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    aput-object v4, v2, v3

    .line 174
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/d;->a([Lcom/bumptech/glide/load/resource/bitmap/d;)Lcom/bumptech/glide/c;

    move-result-object v0

    .line 175
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    .line 177
    :cond_0
    sget-object v0, Lcm/aptoide/pt/imageloader/ImageLoader;->TAG:Ljava/lang/String;

    const-string v1, "::loadWithShadowCircleTransform() Context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v0, 0x0

    goto :goto_0
.end method
