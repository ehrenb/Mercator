.class final Lcom/b/b/cf$1;
.super Lcom/b/b/dh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/cf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/cf;


# direct methods
.method constructor <init>(Lcom/b/b/cf;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/b/b/cf$1;->a:Lcom/b/b/cf;

    invoke-direct {p0}, Lcom/b/b/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/b/b/cf$1;->a:Lcom/b/b/cf;

    invoke-static {v0}, Lcom/b/b/cf;->a(Lcom/b/b/cf;)V

    .line 39
    return-void
.end method
