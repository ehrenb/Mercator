.class Lcom/a/a/c/k$5;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/c/k;->a([Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/a/a/c/k;


# direct methods
.method constructor <init>(Lcom/a/a/c/k;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 741
    iput-object p1, p0, Lcom/a/a/c/k$5;->b:Lcom/a/a/c/k;

    iput-object p2, p0, Lcom/a/a/c/k$5;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/16 v2, 0x23

    const/4 v0, 0x0

    .line 744
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_0

    .line 747
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/a/a/c/k$5;->a:Ljava/util/Set;

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
