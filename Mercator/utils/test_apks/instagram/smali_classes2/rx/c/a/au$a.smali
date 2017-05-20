.class final Lrx/c/a/au$a;
.super Ljava/lang/Object;
.source "OperatorToObservableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/a/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field static final a:Lrx/c/a/au;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/a/au",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lrx/c/a/au;

    invoke-direct {v0}, Lrx/c/a/au;-><init>()V

    sput-object v0, Lrx/c/a/au$a;->a:Lrx/c/a/au;

    return-void
.end method
