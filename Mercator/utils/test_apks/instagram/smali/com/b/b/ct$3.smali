.class final Lcom/b/b/ct$3;
.super Lcom/b/b/dh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/b/ct;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/ct;


# direct methods
.method constructor <init>(Lcom/b/b/ct;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/b/b/ct$3;->a:Lcom/b/b/ct;

    invoke-direct {p0}, Lcom/b/b/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/b/b/ct$3;->a:Lcom/b/b/ct;

    invoke-static {v0}, Lcom/b/b/ct;->a(Lcom/b/b/ct;)V

    .line 215
    return-void
.end method
