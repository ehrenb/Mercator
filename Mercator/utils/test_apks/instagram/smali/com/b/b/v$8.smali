.class final Lcom/b/b/v$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/b/bp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/b/bp",
        "<",
        "Lcom/b/b/ay;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/v;


# direct methods
.method constructor <init>(Lcom/b/b/v;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/b/b/v$8;->a:Lcom/b/b/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/b/b/bo;)V
    .locals 1

    .prologue
    .line 122
    check-cast p1, Lcom/b/b/ay;

    .line 1125
    iget-boolean v0, p1, Lcom/b/b/ay;->a:Z

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/b/b/v$8;->a:Lcom/b/b/v;

    invoke-static {v0}, Lcom/b/b/v;->a(Lcom/b/b/v;)V

    .line 122
    :cond_0
    return-void
.end method
