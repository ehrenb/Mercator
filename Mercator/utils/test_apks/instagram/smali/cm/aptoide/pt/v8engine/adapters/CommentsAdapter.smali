.class public Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;
.super Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;
.source "CommentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
        ">",
        "Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;"
    }
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;->clazz:Ljava/lang/Class;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;-><init>()V

    .line 18
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;->clazz:Ljava/lang/Class;

    .line 19
    return-void
.end method


# virtual methods
.method public getItemPosition(I)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 30
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;->clazz:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 47
    :goto_0
    return v2

    :cond_0
    move v1, v0

    .line 37
    :goto_1
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;->getItemCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 38
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;->clazz:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;->getDisplayable(I)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 39
    if-ne v1, p1, :cond_1

    :goto_2
    move v2, v0

    .line 47
    goto :goto_0

    .line 43
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 37
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2
.end method
