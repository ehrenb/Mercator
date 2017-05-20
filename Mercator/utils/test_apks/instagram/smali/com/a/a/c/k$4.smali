.class Lcom/a/a/c/k$4;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/c/k;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/c/k;


# direct methods
.method constructor <init>(Lcom/a/a/c/k;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lcom/a/a/c/k$4;->a:Lcom/a/a/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 709
    iget-object v0, p0, Lcom/a/a/c/k$4;->a:Lcom/a/a/c/k;

    iget-object v1, p0, Lcom/a/a/c/k$4;->a:Lcom/a/a/c/k;

    new-instance v2, Lcom/a/a/c/k$c;

    invoke-direct {v2}, Lcom/a/a/c/k$c;-><init>()V

    invoke-static {v1, v2}, Lcom/a/a/c/k;->a(Lcom/a/a/c/k;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c/k;->a([Ljava/io/File;)V

    .line 710
    return-void
.end method
