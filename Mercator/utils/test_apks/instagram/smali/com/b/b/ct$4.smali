.class final Lcom/b/b/ct$4;
.super Lcom/b/b/dh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/b/ct;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/cr;

.field final synthetic b:Lcom/b/b/ct;


# direct methods
.method constructor <init>(Lcom/b/b/ct;Lcom/b/b/cr;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/b/b/ct$4;->b:Lcom/b/b/ct;

    iput-object p2, p0, Lcom/b/b/ct$4;->a:Lcom/b/b/cr;

    invoke-direct {p0}, Lcom/b/b/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/b/b/ct$4;->b:Lcom/b/b/ct;

    iget-object v1, p0, Lcom/b/b/ct$4;->a:Lcom/b/b/cr;

    invoke-static {v0, v1}, Lcom/b/b/ct;->a(Lcom/b/b/ct;Lcom/b/b/cr;)V

    .line 327
    return-void
.end method
