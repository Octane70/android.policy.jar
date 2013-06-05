.class public Lcom/android/internal/policy/impl/MultiWindowReflector;
.super Ljava/lang/Object;
.source "MultiWindowReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MultiWindowReflector$Configuration;,
        Lcom/android/internal/policy/impl/MultiWindowReflector$Gravity;,
        Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;,
        Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;
    }
.end annotation


# static fields
.field private static sArrangeField:Ljava/lang/reflect/Field;

.field private static sGetWindowMode:Ljava/lang/reflect/Method;

.field private static sNotifySystemUiVisibility:Ljava/lang/reflect/Method;

.field private static sQueriedNotifySystemUiVisibilityFunc:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 96
    sput-object v1, Lcom/android/internal/policy/impl/MultiWindowReflector;->sNotifySystemUiVisibility:Ljava/lang/reflect/Method;

    .line 97
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/MultiWindowReflector;->sQueriedNotifySystemUiVisibilityFunc:Z

    .line 171
    sput-object v1, Lcom/android/internal/policy/impl/MultiWindowReflector;->sArrangeField:Ljava/lang/reflect/Field;

    .line 188
    sput-object v1, Lcom/android/internal/policy/impl/MultiWindowReflector;->sGetWindowMode:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 145
    return-void
.end method

.method public static getArrangeMode(Landroid/content/res/Configuration;)I
    .registers 4
    .parameter "config"

    .prologue
    .line 174
    :try_start_0
    sget-object v1, Lcom/android/internal/policy/impl/MultiWindowReflector;->sArrangeField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_10

    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "arrange"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/impl/MultiWindowReflector;->sArrangeField:Ljava/lang/reflect/Field;

    .line 177
    :cond_10
    sget-object v1, Lcom/android/internal/policy/impl/MultiWindowReflector;->sArrangeField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sget v2, Lcom/android/internal/policy/impl/MultiWindowReflector$Configuration;->ARRANGE_TOGGLE_MASK:I
    :try_end_18
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_18} :catch_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_18} :catch_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_18} :catch_27

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    .line 185
    :goto_1b
    return v1

    .line 178
    :catch_1c
    move-exception v0

    .line 179
    .local v0, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 185
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :goto_20
    const/4 v1, 0x0

    goto :goto_1b

    .line 180
    :catch_22
    move-exception v0

    .line 181
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_20

    .line 182
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_27
    move-exception v0

    .line 183
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_20
.end method

.method public static getWindowMode(Ljava/lang/Object;)I
    .registers 6
    .parameter "obj"

    .prologue
    .line 191
    if-eqz p0, :cond_39

    .line 192
    :try_start_2
    sget-object v2, Lcom/android/internal/policy/impl/MultiWindowReflector;->sGetWindowMode:Ljava/lang/reflect/Method;

    if-nez v2, :cond_23

    .line 193
    const-string v2, "com.android.server.wm.WindowState"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getWindowModeLw"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/internal/policy/impl/MultiWindowReflector;->sGetWindowMode:Ljava/lang/reflect/Method;

    .line 197
    :cond_23
    sget-object v2, Lcom/android/internal/policy/impl/MultiWindowReflector;->sGetWindowMode:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_39

    .line 198
    sget-object v2, Lcom/android/internal/policy/impl/MultiWindowReflector;->sGetWindowMode:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 199
    .local v1, result:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_33
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_33} :catch_35
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_33} :catch_3c
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_33} :catch_41
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_33} :catch_46
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_33} :catch_4b

    move-result v2

    .line 214
    .end local v1           #result:Ljava/lang/Integer;
    :goto_34
    return v2

    .line 202
    :catch_35
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 214
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_39
    :goto_39
    sget v2, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_NORMAL:I

    goto :goto_34

    .line 204
    :catch_3c
    move-exception v0

    .line 205
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_39

    .line 206
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_41
    move-exception v0

    .line 207
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_39

    .line 208
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_46
    move-exception v0

    .line 209
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_39

    .line 210
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_4b
    move-exception v0

    .line 211
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method public static notifySystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowManagerFuncs;I)V
    .registers 8
    .parameter "funcs"
    .parameter "visibility"

    .prologue
    .line 101
    :try_start_0
    sget-object v1, Lcom/android/internal/policy/impl/MultiWindowReflector;->sNotifySystemUiVisibility:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1f

    sget-boolean v1, Lcom/android/internal/policy/impl/MultiWindowReflector;->sQueriedNotifySystemUiVisibilityFunc:Z

    if-nez v1, :cond_1f

    .line 102
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/policy/impl/MultiWindowReflector;->sQueriedNotifySystemUiVisibilityFunc:Z

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "notifySystemUiVisibility"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/impl/MultiWindowReflector;->sNotifySystemUiVisibility:Ljava/lang/reflect/Method;

    .line 105
    :cond_1f
    sget-object v1, Lcom/android/internal/policy/impl/MultiWindowReflector;->sNotifySystemUiVisibility:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_32

    .line 106
    sget-object v1, Lcom/android/internal/policy/impl/MultiWindowReflector;->sNotifySystemUiVisibility:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_32} :catch_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_32} :catch_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_32} :catch_3d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_32} :catch_42

    .line 117
    :cond_32
    :goto_32
    return-void

    .line 108
    :catch_33
    move-exception v0

    .line 109
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_32

    .line 110
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_38
    move-exception v0

    .line 111
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_32

    .line 112
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3d
    move-exception v0

    .line 113
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_32

    .line 114
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_42
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_32
.end method
