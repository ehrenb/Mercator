.class public Lcom/a/a/c/f$a;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:F

.field private b:Lcom/a/a/c/i;

.field private c:Lcom/a/a/c/y;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/a/a/c/f$a;->a:F

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/c/f$a;->d:Z

    return-void
.end method


# virtual methods
.method public a(Z)Lcom/a/a/c/f$a;
    .locals 0

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/a/a/c/f$a;->d:Z

    .line 184
    return-object p0
.end method

.method public a()Lcom/a/a/c/f;
    .locals 5

    .prologue
    .line 188
    iget v0, p0, Lcom/a/a/c/f$a;->a:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 189
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/a/a/c/f$a;->a:F

    .line 191
    :cond_0
    new-instance v0, Lcom/a/a/c/f;

    iget v1, p0, Lcom/a/a/c/f$a;->a:F

    iget-object v2, p0, Lcom/a/a/c/f$a;->b:Lcom/a/a/c/i;

    iget-object v3, p0, Lcom/a/a/c/f$a;->c:Lcom/a/a/c/y;

    iget-boolean v4, p0, Lcom/a/a/c/f$a;->d:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/a/a/c/f;-><init>(FLcom/a/a/c/i;Lcom/a/a/c/y;Z)V

    return-object v0
.end method
