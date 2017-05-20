.class final Lcom/b/b/cn$2;
.super Ljava/io/DataInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/b/cn;->b(Ljava/io/InputStream;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/cn;


# direct methods
.method constructor <init>(Lcom/b/b/cn;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/b/b/cn$2;->a:Lcom/b/b/cn;

    invoke-direct {p0, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method
