.class public Lcom/facebook/c/p;
.super Ljava/lang/Object;
.source "ImageResponse.java"


# instance fields
.field private a:Lcom/facebook/c/o;

.field private b:Ljava/lang/Exception;

.field private c:Z

.field private d:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/facebook/c/o;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/facebook/c/p;->a:Lcom/facebook/c/o;

    .line 39
    iput-object p2, p0, Lcom/facebook/c/p;->b:Ljava/lang/Exception;

    .line 40
    iput-object p4, p0, Lcom/facebook/c/p;->d:Landroid/graphics/Bitmap;

    .line 41
    iput-boolean p3, p0, Lcom/facebook/c/p;->c:Z

    .line 42
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/c/p;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method
