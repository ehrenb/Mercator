.class final Lcom/b/b/ct$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/b/bp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/ct;
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
        "Lcom/b/b/cv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/ct;


# direct methods
.method constructor <init>(Lcom/b/b/ct;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/b/b/ct$1;->a:Lcom/b/b/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/b/b/bo;)V
    .locals 1

    .prologue
    .line 60
    .line 1063
    iget-object v0, p0, Lcom/b/b/ct$1;->a:Lcom/b/b/ct;

    invoke-static {v0}, Lcom/b/b/ct;->a(Lcom/b/b/ct;)V

    .line 60
    return-void
.end method
