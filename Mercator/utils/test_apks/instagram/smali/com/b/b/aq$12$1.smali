.class final Lcom/b/b/aq$12$1;
.super Lcom/b/b/dh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/b/aq$12;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/aq$12;


# direct methods
.method constructor <init>(Lcom/b/b/aq$12;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/b/b/aq$12$1;->a:Lcom/b/b/aq$12;

    invoke-direct {p0}, Lcom/b/b/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 360
    invoke-static {}, Lcom/b/b/a;->a()Lcom/b/b/a;

    move-result-object v0

    .line 1094
    iget-object v0, v0, Lcom/b/b/a;->c:Lcom/b/b/x;

    .line 2080
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/b/b/cf;->c:Z

    .line 361
    return-void
.end method
