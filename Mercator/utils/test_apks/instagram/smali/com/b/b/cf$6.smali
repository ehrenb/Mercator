.class final Lcom/b/b/cf$6;
.super Lcom/b/b/dh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/b/cf;->c(Lcom/b/b/ce;)V
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
    .line 114
    iput-object p1, p0, Lcom/b/b/cf$6;->a:Lcom/b/b/cf;

    invoke-direct {p0}, Lcom/b/b/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/b/b/cf$6;->a:Lcom/b/b/cf;

    invoke-static {v0}, Lcom/b/b/cf;->c(Lcom/b/b/cf;)V

    .line 118
    return-void
.end method
