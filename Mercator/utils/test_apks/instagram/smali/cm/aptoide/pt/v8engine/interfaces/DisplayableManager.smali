.class public interface abstract Lcm/aptoide/pt/v8engine/interfaces/DisplayableManager;
.super Ljava/lang/Object;
.source "DisplayableManager.java"


# virtual methods
.method public abstract addDisplayable(ILcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;Z)Lcm/aptoide/pt/v8engine/interfaces/DisplayableManager;
.end method

.method public abstract addDisplayable(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;Z)Lcm/aptoide/pt/v8engine/interfaces/DisplayableManager;
.end method

.method public abstract addDisplayables(ILjava/util/List;Z)Lcm/aptoide/pt/v8engine/interfaces/DisplayableManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<+",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;Z)",
            "Lcm/aptoide/pt/v8engine/interfaces/DisplayableManager;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract addDisplayables(Ljava/util/List;Z)Lcm/aptoide/pt/v8engine/interfaces/DisplayableManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;Z)",
            "Lcm/aptoide/pt/v8engine/interfaces/DisplayableManager;"
        }
    .end annotation
.end method

.method public abstract clearDisplayables()Lcm/aptoide/pt/v8engine/interfaces/DisplayableManager;
.end method
