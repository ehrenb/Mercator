.class public final Lcom/b/b/cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/b/co;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b/b/co",
        "<",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field a:Lcom/b/b/co;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/b/co",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/b/b/co;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/b/co",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/b/b/cn;->a:Lcom/b/b/co;

    .line 26
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/b/b/cn;->b(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/b/b/cn;->a(Ljava/io/OutputStream;Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/io/OutputStream;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 30
    if-nez p1, :cond_0

    .line 50
    :goto_0
    return-void

    .line 34
    :cond_0
    new-instance v2, Lcom/b/b/cn$1;

    invoke-direct {v2, p0, p1}, Lcom/b/b/cn$1;-><init>(Lcom/b/b/cn;Ljava/io/OutputStream;)V

    .line 42
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 43
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 45
    :goto_2
    if-ge v1, v0, :cond_2

    .line 46
    iget-object v3, p0, Lcom/b/b/cn;->a:Lcom/b/b/co;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lcom/b/b/co;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    move v0, v1

    .line 42
    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0
.end method

.method public final b(Ljava/io/InputStream;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    if-nez p1, :cond_1

    .line 55
    const/4 v0, 0x0

    .line 77
    :cond_0
    return-object v0

    .line 58
    :cond_1
    new-instance v0, Lcom/b/b/cn$2;

    invoke-direct {v0, p0, p1}, Lcom/b/b/cn$2;-><init>(Lcom/b/b/cn;Ljava/io/InputStream;)V

    .line 66
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 70
    iget-object v3, p0, Lcom/b/b/cn;->a:Lcom/b/b/co;

    invoke-interface {v3, p1}, Lcom/b/b/co;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v3

    .line 71
    if-nez v3, :cond_2

    .line 72
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing record."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
