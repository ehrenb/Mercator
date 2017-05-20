.class synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListAppsFragment$1;
.super Ljava/lang/Object;
.source "ListAppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListAppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cm$aptoide$pt$model$v7$Layout:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    invoke-static {}, Lcm/aptoide/pt/model/v7/Layout;->values()[Lcm/aptoide/pt/model/v7/Layout;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListAppsFragment$1;->$SwitchMap$cm$aptoide$pt$model$v7$Layout:[I

    :try_start_0
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListAppsFragment$1;->$SwitchMap$cm$aptoide$pt$model$v7$Layout:[I

    sget-object v1, Lcm/aptoide/pt/model/v7/Layout;->GRAPHIC:Lcm/aptoide/pt/model/v7/Layout;

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Layout;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
