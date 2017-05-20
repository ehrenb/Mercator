.class final Lcom/a/a/c/k$d;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/a/a/c/f;

.field private final b:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/a/a/c/f;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1313
    iput-object p1, p0, Lcom/a/a/c/k$d;->a:Lcom/a/a/c/f;

    .line 1314
    iput-object p2, p0, Lcom/a/a/c/k$d;->b:Ljava/io/File;

    .line 1315
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/a/a/c/k$d;->a:Lcom/a/a/c/f;

    invoke-virtual {v0}, Lcom/a/a/c/f;->E()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/i;->n(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1334
    :cond_0
    :goto_0
    return-void

    .line 1323
    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Attempting to send crash report at time of crash..."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    invoke-static {}, Lio/fabric/sdk/android/services/e/q;->a()Lio/fabric/sdk/android/services/e/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/e/q;->b()Lio/fabric/sdk/android/services/e/t;

    move-result-object v0

    .line 1326
    iget-object v1, p0, Lcom/a/a/c/k$d;->a:Lcom/a/a/c/f;

    invoke-virtual {v1, v0}, Lcom/a/a/c/f;->a(Lio/fabric/sdk/android/services/e/t;)Lcom/a/a/c/m;

    move-result-object v0

    .line 1330
    if-eqz v0, :cond_0

    .line 1331
    new-instance v1, Lcom/a/a/c/ac;

    iget-object v2, p0, Lcom/a/a/c/k$d;->a:Lcom/a/a/c/f;

    invoke-virtual {v2}, Lcom/a/a/c/f;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/a/a/c/ac;-><init>(Ljava/lang/String;Lcom/a/a/c/m;)V

    new-instance v0, Lcom/a/a/c/ae;

    iget-object v2, p0, Lcom/a/a/c/k$d;->b:Ljava/io/File;

    invoke-static {}, Lcom/a/a/c/k;->j()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/a/a/c/ae;-><init>(Ljava/io/File;Ljava/util/Map;)V

    invoke-virtual {v1, v0}, Lcom/a/a/c/ac;->a(Lcom/a/a/c/ab;)Z

    goto :goto_0
.end method
