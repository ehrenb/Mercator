.class final Lcom/b/b/at$1$1;
.super Lcom/b/b/dh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/at$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/at$1;


# direct methods
.method constructor <init>(Lcom/b/b/at$1;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/b/b/at$1$1;->a:Lcom/b/b/at$1;

    invoke-direct {p0}, Lcom/b/b/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/b/b/at$1$1;->a:Lcom/b/b/at$1;

    iget-object v0, v0, Lcom/b/b/at$1;->a:Lcom/b/b/at;

    invoke-static {v0}, Lcom/b/b/at;->a(Lcom/b/b/at;)V

    .line 81
    return-void
.end method
