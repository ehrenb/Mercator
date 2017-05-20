.class final Lcom/b/b/y$a$2;
.super Ljava/io/DataInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/y$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/y$a;


# direct methods
.method constructor <init>(Lcom/b/b/y$a;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/b/b/y$a$2;->a:Lcom/b/b/y$a;

    invoke-direct {p0, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method
