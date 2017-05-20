.class public Lio/realm/internal/a;
.super Ljava/lang/Object;
.source "ColumnIndices.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;",
            "Lio/realm/internal/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;",
            "Lio/realm/internal/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lio/realm/internal/a;->a:Ljava/util/Map;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lio/realm/internal/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;)",
            "Lio/realm/internal/b;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lio/realm/internal/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/b;

    return-object v0
.end method
