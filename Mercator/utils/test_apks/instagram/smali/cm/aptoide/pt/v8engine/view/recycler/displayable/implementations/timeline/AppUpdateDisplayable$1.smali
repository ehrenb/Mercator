.class synthetic Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable$1;
.super Ljava/lang/Object;
.source "AppUpdateDisplayable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cm$aptoide$pt$utils$GenericDialogs$EResponse:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 121
    invoke-static {}, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->values()[Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable$1;->$SwitchMap$cm$aptoide$pt$utils$GenericDialogs$EResponse:[I

    :try_start_0
    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable$1;->$SwitchMap$cm$aptoide$pt$utils$GenericDialogs$EResponse:[I

    sget-object v1, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->YES:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {v1}, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable$1;->$SwitchMap$cm$aptoide$pt$utils$GenericDialogs$EResponse:[I

    sget-object v1, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->NO:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {v1}, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
