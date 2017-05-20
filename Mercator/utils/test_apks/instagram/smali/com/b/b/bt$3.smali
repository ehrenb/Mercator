.class final Lcom/b/b/bt$3;
.super Lcom/b/b/dh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/b/bt;->a(Lcom/b/b/di;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/di;

.field final synthetic b:Lcom/b/b/bt;


# direct methods
.method constructor <init>(Lcom/b/b/bt;Lcom/b/b/di;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/b/b/bt$3;->b:Lcom/b/b/bt;

    iput-object p2, p0, Lcom/b/b/bt$3;->a:Lcom/b/b/di;

    invoke-direct {p0}, Lcom/b/b/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/b/b/bt$3;->a:Lcom/b/b/di;

    invoke-virtual {v0}, Lcom/b/b/di;->g()V

    .line 176
    return-void
.end method
