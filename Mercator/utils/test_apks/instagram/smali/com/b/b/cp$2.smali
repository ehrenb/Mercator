.class final Lcom/b/b/cp$2;
.super Ljava/io/DataInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/b/cp;->a(Ljava/io/InputStream;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/cp;


# direct methods
.method constructor <init>(Lcom/b/b/cp;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/b/b/cp$2;->a:Lcom/b/b/cp;

    invoke-direct {p0, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method
