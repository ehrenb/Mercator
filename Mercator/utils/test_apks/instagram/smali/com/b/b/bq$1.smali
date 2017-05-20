.class final Lcom/b/b/bq$1;
.super Lcom/b/b/dh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/b/bq;->a(Lcom/b/b/bo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/bp;

.field final synthetic b:Lcom/b/b/bo;

.field final synthetic c:Lcom/b/b/bq;


# direct methods
.method constructor <init>(Lcom/b/b/bq;Lcom/b/b/bp;Lcom/b/b/bo;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/b/b/bq$1;->c:Lcom/b/b/bq;

    iput-object p2, p0, Lcom/b/b/bq$1;->a:Lcom/b/b/bp;

    iput-object p3, p0, Lcom/b/b/bq$1;->b:Lcom/b/b/bo;

    invoke-direct {p0}, Lcom/b/b/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/b/b/bq$1;->a:Lcom/b/b/bp;

    iget-object v1, p0, Lcom/b/b/bq$1;->b:Lcom/b/b/bo;

    invoke-interface {v0, v1}, Lcom/b/b/bp;->a(Lcom/b/b/bo;)V

    .line 137
    return-void
.end method
